/* 1b(iii).Write a java program for getting different colors through ArrayList interface and sort them using Collections.sort( ArrayListObj) */



package JAVA;
import java.util.ArrayList;
import java.util.Collections;

public class P1b_iii{
public static void main(String[] args) {

ArrayList<String> colors = new ArrayList<>();

colors.add("Blue");
colors.add("Green");
colors.add("Yellow");
colors.add("Red");
colors.add("Black");

System.out.println("Before Sorting: " + colors);

// Sort the ArrayList
Collections.sort(colors);

System.out.println("After Sorting: " + colors);
}
}