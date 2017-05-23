using Hl7.Fhir.Model;
using Hl7.Fhir.Rest;
using Hl7.Fhir.Serialization;
using System;

namespace chmed16af
{

    class CHMED16AF
    {
        public Bundle Bundle { get; private set; }
        public Composition Composition { get; private set; }
        public string BaseUrl { get; private set; }

        public Patient Patient
        {
            get
            {
                System.Collections.Generic.IEnumerator<Bundle.EntryComponent> enumerator = Bundle.FindEntry(Composition.Subject.GetAbsoluteUriForReference(BaseUrl)).GetEnumerator();
                enumerator.MoveNext();
                return (Patient)enumerator.Current.Resource;
            }
        }

        public CHMED16AF()
        { }

        private void init()
        {
            Composition = (Composition)Bundle.Entry[0].Resource;
            BaseUrl = Bundle.Entry[0].FullUrl;
        }

        public bool parse(string path)
        {
            FhirXmlParser parser = new FhirXmlParser();
            Bundle = parser.Parse<Bundle>(System.IO.File.ReadAllText(path));
            init();
            return Bundle != null;
        }

        public System.Collections.Generic.List<MedicationStatement> getMedicationStatements()
        {
            System.Collections.Generic.List<MedicationStatement> list = new System.Collections.Generic.List<MedicationStatement>();

            foreach (Composition.SectionComponent sectionComponent in Composition.Section)
            {
                foreach (Coding coding in sectionComponent.Code.Coding)
                {
                    if ("http://loinc.org".Equals(coding.System) && "77604-7".Equals(coding.Code))
                    {
                        foreach (ResourceReference resourceReference in sectionComponent.Entry) {
                            System.Collections.Generic.IEnumerator<Bundle.EntryComponent> enumerator = Bundle.FindEntry(resourceReference.GetAbsoluteUriForReference(BaseUrl)).GetEnumerator();
                            enumerator.MoveNext();
                            list.Add((MedicationStatement) enumerator.Current.Resource);
                        }
                        return list;
                    }
                }
            }
            return list;
        }


    }


}