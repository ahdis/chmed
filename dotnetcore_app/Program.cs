using System;
using Hl7.Fhir.Model;
using Hl7.Fhir.Rest;
using Hl7.Fhir.Serialization;
using Hl7.Fhir.Validation;
using Hl7.Fhir.Specification;
using System.IO;
using System.Collections.Generic;
using Hl7.Fhir.Specification.Source;

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

            CachedResolver  _source;
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

        public void xslToQrCode()
        {
            // NOTE: XSLT Translations are not possible with dotnetcore 1.0, will be 2.0
        }


        static void Main(string[] args)
        {
            Program program = new Program();
            program.readCHMED16AF();
            program.validateCHMED16AF();

        }
    }
}
