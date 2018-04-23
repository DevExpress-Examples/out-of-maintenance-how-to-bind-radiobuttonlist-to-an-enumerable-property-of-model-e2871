using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

public enum CommonMeals {
    Breakfast,
    Lunch,
    Dinner,
    Supper
}

public class MyModel {
    public String Name { get; set; }
    public CommonMeals Meal { get; set; }
}