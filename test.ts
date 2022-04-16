function student(rollno: number , name:string , department?:string){
    if(department) return name + " " + rollno + " " + department
    else return name + " " + rollno
}

let result = student( 16 , "Emaad"); 
let result1 = student( 16 , "Emaad" , "Information Technology"); 
console.log(result)
console.log(result1)