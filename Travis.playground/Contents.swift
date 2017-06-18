
import Cocoa

func isLeap(year: Int) -> Bool {
	return year % 4 == 0 && ( year % 100 != 0 || year % 400 == 0 )
}

func julianDate(year: Int, month: Int, day: Int) -> Int {

	let cumDays = [0,31,59,90,120, 151, 181, 212, 243, 273, 304, 334]

	let r = day + cumDays[month-1] + (1900..<year).reduce(0, { r, year in isLeap(year: year) ? r + 366 : r + 365 } )

	return isLeap(year:year) && month > 3 ? r + 1 : r
}


func allCoordinates(maxRows rows: Int, maxCols cols: Int) -> [[Int]] {

	var r = [[Int]]()

	_ = (0..<rows).map { row in
		(0..<cols).map { col in
			r.append([row,col])
		}
	}

	return r
}

print( allCoordinates(maxRows: 3, maxCols: 3))

//print(isLeap(year: 2016))

//print( julianDate(year: 2016, month: 2, day: 29))
//print( julianDate(year: 1901, month: 1, day: 1))

//print( allCoordinates(maxRows: 3, maxCols: 3))

