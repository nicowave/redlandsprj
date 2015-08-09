//
//  randomRedlands.swift
//  Created by Nicolas Roldos on 8/8/15.
//

// 'facts' in 'allfacts' array taken from wikipedia article: https://en.wikipedia.org/wiki/Redlands,_California#History
// some attribution: please visit https://en.wikipedia.org/wiki/Redlands,_California#References for a full list of references from which values of 'allfacts' array are based

/* todo list...
// add background color and dot on map for each random fact (story-map of sorts...)
// flocations: [CLLocationCoordinate2D]?
// get location for San Bernardino Asistencia of 1819
// get location for Serrano (Mountain-dwelling Cahuilla) village of Guachama
// get location or region-span data on Morongo and Aguas Calientes tribes
// etc.. 
// (get locations that is appropriate per 'randomfact' String... add as CLLocationCoordinate2D)
// decide if a dictionary will be a better way to store data (i.e.: 'key' as randomFactString: 'value' as CLLocationCoordinate2D) */


class RedlandsFactLibrary: NSObject {
	
	let allfacts: [String]
	var category: String?
	var randomfact: String?
	var randomfactnumber: UInt32?
	var numberoffacts: Int?
	
	init(category: String) {
		
		switch category {
			
		case "history":
			allfacts = [
				"Redlands was originally part of the territory of the Morongo and Aguas Calientes tribes",
				"The Franciscan friars from Mission San Gabriel established the San Bernardino Asistencia in 1819",
				"The Serrano (Mountain-dwelling Cahuilla) village of Guachama, located just to the west of present-day Redlands, was visited by Fr. Francisco Dumetz in 1810",
				"Dumetz reached the village on May 20, the feast day of Saint Bernardino of Siena, and thus named the region the San Bernardino Valley.",
				"In 1822, word of the Mexican triumph in the War of Independence reached the inland area, and lands previously claimed by Spain passed to the custody of the Mexican government.",
				"By 1820, a ditch, known as a zanja, was dug by the natives for the friars from Mill Creek to the Asistencia.",
				"In 1842, the Lugo family bought the Rancho San Bernardino Mexican land grant",
				"The area northwest of Redlands, astride the Santa Ana River, would become known as Lugonia",
				"In 1851, the area received its first Anglo inhabitants in the form of several hundred Mormon pioneers",
				"The Mormon community left Redlands in 1857, recalled to Utah by Brigham Young",
				"Benjamin Barton purchased 1,000 acres (4 km2) from the Latter-day Saints and planted extensive vineyards and built a winery.",
				"According to a report by Ira L. Swett in 'Tractions of the Orange Empire,' the first record of a settler of present day Redlands was a sheep herder who built a hut at the corner of what is now Cajon St. and Cypress Ave in 1869",
				"In the spring of 1882, Mr. E. J. Waite of Wisconsin planted the first orange grove in the city.",
				"The city produced more than 4,200 railcars of navel oranges and 1,300 cars of Valencia oranges during the 1937–38 growing season",
				"At the turn of the 20th century, Redlands was the 'Palm Springs' of the next century" ]
			allfacts.count
			
		case "geo":
			allfacts = [
				"According to the United States Census Bureau, the city has a total area of 36.4 square miles (94 km2)",
				"36.1 square miles (93 km2) of it is land and 0.3 square miles (0.78 km2) of it (0.83%) is water.",
				"The climate in this area is described by the Köppen Climate Classification System as 'dry-summer subtropical' often referred to as 'Mediterranean' and abbreviated as Csa",
				"The 2010 United States Census[33] reported that Redlands had a population of 68,747.",
				"According to the 2010 US Census, in Redlands, for every 100 females age 18 and over, there were 87.3 males (in 2010)" ]
			allfacts.count
			
		default:
			allfacts = ["one", "two", "three"]

		} // end of switch statement

	} // end of designated init()
	
	func randomfactgenerator() -> String {
		
		let facts = allfacts.count
		randomfactnumber = arc4random_uniform(UInt32(facts))
		randomfact = allfacts[Int(randomfactnumber!)]
		
		return randomfact!
	}
}


// try initializing this class in a Playground and calling the function 'randomfactgenerator'
/*
var geofacts = RedlandsFactLibrary(category: "geo")
var historyfacts = RedlandsFactLibrary(category: "history")
geofacts.allfacts[0]
historyfacts.allfacts[1]
geofacts.randomfactgenerator()
historyfacts.randomfactgenerator()
*/
//