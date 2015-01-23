package es.upm.fi.dia.oeg.morph.r2rml.rdb.mappingsgenerator.util;

import java.util.ArrayList;
import java.util.List;

public class Combine {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        //char[] sequence = { 'a', 'b', 'c', 'd', 'e' };
        
		ArrayList<String> comb = new ArrayList<String>();
		
        ArrayList<String> s = new ArrayList<String>();
        s.add("a");
        s.add("b");
        s.add("c");
        //s.add("d");
        //s.add("e");
        System.out.print("The combinations are: ");
        getCombinations(comb, s, s.size());
        //printCombinations(sequence, sequence.length);
        for(int i=0; i<comb.size(); i++) {
            System.out.println(comb.get(i));
        }
	}

	public static void getPairsCombination(List<String> sequence, List<String> data, int N) {
        int[] binary = new int[(int) Math.pow(2, N)];
        for (int i = 0; i < Math.pow(2, N); i++) 
        {
            int b = 1;
            binary[i] = 0;
            int num = i, count = 0;
            while (num > 0) 
            {
                if (num % 2 == 1)
                    count++;
                binary[i] += (num % 2) * b;
                num /= 2;
                b = b * 10;
            }
            if (count == 2) 
            {
            	String temp = "";
                for (int j = 0; j < N; j++) 
                {
                    if (binary[i] % 10 == 1) {
                    	temp = temp + sequence.get(j) + ",";
                    	//System.out.print(sequence.get(j) + " ");
                    }
                    binary[i] /= 10;
                }
                data.add(temp);
            }
        }
	}
	
    public static void getCombinations(char[] sequence, int N) 
    {
        char[] data = new char[N];
        for (int r = 0; r < sequence.length; r++)
            combinations(sequence, data, 0, N - 1, 0, r);
    }

    public static void getCombinations(ArrayList<String> comb, ArrayList<String> sequence, int N) 
    {
    	ArrayList<String> data = new ArrayList<String>();
        for(int i=0; i<N; i++) {
        	data.add("");
        }
        for (int r = 0; r < sequence.size(); r++)
            combinations(comb, sequence, data, 0, N - 1, 0, r);
    }

    
    public static void combinations(char[] sequence, char[] data, int start, int end, int index, int r) 
    {
        if (index == r) 
        {
            for (int j = 0; j < r; j++)
                System.out.print(data[j] + " ");
            System.out.println();
        }
 
        for (int i = start; i <= end && ((end - i + 1) >= (r - index)); i++) 
        {
            data[index] = sequence[i];
            combinations(sequence, data, i + 1, end, index + 1, r);
        }
    }

    public static void combinations(ArrayList<String> comb, ArrayList<String> sequence, ArrayList<String> data, int start, int end, int index, int r) 
    {
        if (index == r) 
        {
        	String temp = "";
            for (int j = 0; j < r; j++)
            	temp = temp + data.get(j) + " ";
                //System.out.print(data.get(j) + " ");
            //System.out.println(temp);
            comb.add(temp);
            
        }
 
        for (int i = start; i <= end && ((end - i + 1) >= (r - index)); i++) 
        {
            data.set(index, sequence.get(i));
            combinations(comb, sequence, data, i + 1, end, index + 1, r);
        }
    }

    
}
