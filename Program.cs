//using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using System.Windows;

namespace WildfireConverter
{
    
    public class Point
    {

        public Point(double x, double y)
        {
            this.X = x;
            this.Y = y;
        }

        public double X;
        public double Y;
    }

    class Program
    {
        static void Main(string[] args)
        {
            string fileName = "..\\..\\..\\Wildfire_Perimeters.geojson";
            Console.WriteLine("Processing Wildfire Data");

            string jsonString = File.ReadAllText(fileName);
            Rootobject ro = JsonSerializer.Deserialize<Rootobject>(jsonString);
            Feature[] features = ro.features;
            //string[] lines;

            List<String> lines = new List<string>();
            lines.Add("IncidentName,GISAcres,AVGLat, AVGLong");
            

            //now we loop through each feature
            foreach (Feature f in features)
            {
                string incidentName = f.properties.IncidentName;
                float GISAcres = f.properties.GISAcres;
                string mapMethod = f.properties.MapMethod;
                string CreateDate = f.properties.CreateDate;

                float[][] oldCoordinates = f.geometry.coordinates[0][0];

                Point sumOfCoordinates = new Point(0,0);

                int numCoords = 0;

                Point firstCoord;

                //We are going to find the average of coordinates, by summing
                foreach(float[] oldCoord in oldCoordinates)
                {
                    //Save the first coordinate for easy reference
                    if (numCoords == 0) firstCoord = new Point(oldCoord[1], oldCoord[0]);

                    sumOfCoordinates.Y += (double)oldCoord[0];
                    sumOfCoordinates.X += (double)oldCoord[1];
                    numCoords++;
                }

                // Now divide by numCoords to get the average
                //sumOfCoordinates.Y /= numCoords;
                //sumOfCoordinates.X /= numCoords;

                //this didn't kwork at all.
                Point avgCoordinates = new Point(sumOfCoordinates.X / numCoords, sumOfCoordinates.Y / numCoords);

                lines.Add(incidentName + "," + GISAcres + "," + avgCoordinates.Y + "," + avgCoordinates.X);

                Console.WriteLine(incidentName + " : " + GISAcres + " Acres, " + "Avg Lat: " + avgCoordinates.Y + " Avg Long: " + avgCoordinates.X );
            }


            
            // WriteAllLines creates a file, writes a collection of strings to the file,
            // and then closes the file.  You do NOT need to call Flush() or Close().
            System.IO.File.WriteAllLines("..\\..\\..\\WildFires.csv", lines);

            Console.WriteLine("End Processing");
        }
    }


    public class Rootobject
    {
        public string type { get; set; }
        public string name { get; set; }
        public Crs crs { get; set; }
        public Feature[] features { get; set; }
    }

    public class Crs
    {
        public string type { get; set; }
        public Properties properties { get; set; }
    }

    public class Properties
    {
        public string name { get; set; }
    }

    public class Feature
    {
        public string type { get; set; }
        public Properties1 properties { get; set; }
        public Geometry geometry { get; set; }
    }

    public class Properties1
    {
        public int OBJECTID { get; set; }
        public string IncidentName { get; set; }
        public string FeatureCategory { get; set; }
        public string MapMethod { get; set; }
        public string Comments { get; set; }
        public float GISAcres { get; set; }
        public string Label { get; set; }
        public string FeatureAccess { get; set; }
        public string FeatureStatus { get; set; }
        public string IsVisible { get; set; }
        public string CreateDate { get; set; }
        public string DateCurrent { get; set; }
        public string PolygonDateTime { get; set; }
        public string ComplexName { get; set; }
        public string ComplexID { get; set; }
        public string GACC { get; set; }
        public string IMTName { get; set; }
        public string UnitID { get; set; }
        public string LocalIncidentID { get; set; }
        public string IRWINID { get; set; }
        public string GeometryID { get; set; }
        public string GlobalID { get; set; }
        public string GlobalID_2 { get; set; }
        public float SHAPE_Length { get; set; }
        public float SHAPE_Area { get; set; }
    }

    public class Geometry
    {
        public string type { get; set; }
        public float[][][][] coordinates { get; set; }
    }
}
