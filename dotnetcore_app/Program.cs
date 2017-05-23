using System;
using Hl7.Fhir.Model;
using Hl7.Fhir.Rest;
using Hl7.Fhir.Serialization;
using Hl7.Fhir.Validation;
using Hl7.Fhir.Specification;
using System.IO;
using System.Collections.Generic;
using Hl7.Fhir.Specification.Source;
using System.Xml.Xsl;

namespace chmed16af
{

    // terminal: dotnet restore
    // terminal: dotnet run   

    class Program
    {
        public CHMED16AF chmed16af;

        public void readCHMED16AF()
        {
            Console.WriteLine(Directory.GetCurrentDirectory());
            string path = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../resources/Bundle/chmed16af-mp-bundle-s01.xml");
            Console.WriteLine("Reading Bundle from: " + path);

            chmed16af = new CHMED16AF();
            chmed16af.parse(path);

            Console.WriteLine("---> Bundle id: " + chmed16af.Bundle.Id);

            Console.WriteLine("---> Composition id: " + chmed16af.Composition.Id);

            Console.WriteLine("---> Composition BaseUrl: " + chmed16af.BaseUrl);

            Console.WriteLine("---> Patient id: " + chmed16af.Patient.Id);

            foreach (MedicationStatement medicationStatment in chmed16af.getMedicationStatements())
            {
                Console.WriteLine("---> MeciationStatmentID id: " + medicationStatment.Id);
            }
        }

        public void validateCHMED16AF()
        {
            Resource resource = chmed16af.Bundle;
            string pathSpecification = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../validator/igpack.zip");

            // NOTE TODO: IG cannot be directly read, needs to be done
            string pathIg = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../output/validator.pack");

            string pathStructureDefintions = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../resources/StructureDefinition");
            string pathValueSet = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../resources/ValueSet");
            string pathCodeSystem = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../resources/CodeSystem");

            // Ensure the FHIR extensions are registered
            Hl7.Fhir.FhirPath.PocoNavigatorExtensions.PrepareFhirSymbolTableFunctions();

            CachedResolver _source;
            Validator _validator;

            _source = new CachedResolver(
                new MultiResolver(
                    new DirectorySource(pathStructureDefintions),
                    new DirectorySource(pathValueSet),
                    new DirectorySource(pathCodeSystem),
                    //                    new ZipSource(pathIg),
                    new ZipSource(pathSpecification)));

            var ctx = new ValidationSettings()
            {
                ResourceResolver = _source,
                GenerateSnapshot = true,
                EnableXsdValidation = true,
                Trace = false,
                ResolveExteralReferences = true
            };

            _validator = new Validator(ctx);

            var report = _validator.Validate(resource);
            Console.WriteLine(report.ToString());
        }

        // requires dotnetcore2
        public void xslBundleToQrCode()
        {
            string pathXsl = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16af_to_aq.xsl");
            string pathOutput = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16aq-output-dotnet.xml");
            string pathXml = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../resources/Bundle/chmed16af-mp-bundle-s01.xml");

            Console.WriteLine("Transforming " + pathXml + " to " + pathOutput);

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(pathXsl);

            // Execute the transform and output the results to a file.

            xslt.Transform(pathXml, pathOutput);
        }

        public void xslQrCodeToBundle()
        {
            string pathXsl = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16aq_to_af.xsl");
            string pathXml = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16aq-output-dotnet.xml");
            string pathOutput = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16af-output-dotnet.xml");

            Console.WriteLine("Transforming " + pathXml + " to " + pathOutput);

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(pathXsl);

            // Execute the transform and output the results to a file.

            xslt.Transform(pathXml, pathOutput);
        }

        public void readBackAndForthTransformedBundleAndSerializeToJson() {
            string pathOutput = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../chmed16aq/chmed16af-output-dotnet.xml");
            
            CHMED16AF chmed16afBackAndForth = new CHMED16AF();
            chmed16afBackAndForth.parse(pathOutput);

            Console.WriteLine("---> Bundle id: " + chmed16afBackAndForth.Bundle.Id);

            Console.WriteLine("---> Composition id: " + chmed16afBackAndForth.Composition.Id);

            Console.WriteLine("---> Composition BaseUrl: " + chmed16afBackAndForth.BaseUrl);

            Console.WriteLine("---> Patient id: " + chmed16afBackAndForth.Patient.Id);

            foreach (MedicationStatement medicationStatment in chmed16afBackAndForth.getMedicationStatements())
            {
                Console.WriteLine("---> MeciationStatmentID id: " + medicationStatment.Id);
            }

            Console.WriteLine("---> Serialize Bundle To JSON");

            Console.WriteLine(FhirSerializer.SerializeResourceToJson(chmed16afBackAndForth.Bundle));

        }

        static void Main(string[] args)
        {
            Program program = new Program();
            program.readCHMED16AF();
            program.validateCHMED16AF();
            program.xslBundleToQrCode();
            program.xslQrCodeToBundle();
            program.readBackAndForthTransformedBundleAndSerializeToJson();

        }
    }
}
