<h1 align="center">
  <br>
  <a href="https://github.com/SatyenderYadav/verilog-code"><img src="img/icon.png" alt="verilog" height=250 widht=200></a>
  <br>
  verilog code
  <br>
</h1>

<h4 align="center">Verilog Codes For Various Chipsets</h3>

## Contents 

 - [ICs Codes](#ics-codes)
 - [Truth Table & Circuit Diagrams](#truth-table-circuit-diagrams)


## ICs Codes

- [AND Gate](code/and_g.v)

- [NOT Gate](code/not_g.v)

- [NOR Gate](code/nor_g.v)

- [NAND Gate](code/nand_g.v)

- [NAND Gate Using Structural](code/structural_nand.v)

- [All Basic Gate](code/all_basic_gates.v)

- [NOT To OR Gate](code/not_to_or.v)

- [NAND To NOT Gate](code/nand_to_not.v)

- [Half Adder via Data Flow](code/half_adder_data_flow.v)

- [Half Adder via Gate Flow](code/half_adder_gate_flow.v)

- [Full Adder via Data Flow](code/full_adder_data_flow.v)

- [Full Adder via Gate Flow](code/full_adder_gate_flow.v)

- [Full Adder Using Mux 4:1](code/full_adder_using_mux41.v)

- [Half Subtractor via Data Flow](code/half_subtractor_data_flow.v)

- [Half Subtractor via Gate Flow](code/half_subtractor_gate_flow.v)

- [Half Adder Using Decoder](code/half_adder_using_decoder.v)

- [Full Subtractor via Data Flow](code/full_subtractor_data_flow.v)

- [Full Subtractor via Gate Flow](code/full_subtractor_gate_flow.v)

- [2:1 Mux via Data FLow](code/mux21_data_flow.v)

- [4:1 Mux via Data Flow](code/mux41_data_flow.v)

- [4:1 Mux via Gate Flow](code/mux41_gate_flow.v)

- [4:1 Mux Conditional Operator](code/mux41_cond.v)

- [2:1 Mux Conditional Operator](code/mux21_cond.v)

- [Binary To Graycode Converter](code/binary_to_graycode_vector.v)

- [Graycode to Binary Converter](code/graycode_to_binary_4bit.v)

- [Decoder 2:4](code/decoder_24.v)

- [Decoder 3:8](code/decoder38.v)

- [Multiplier 2x2 Data Flow](code/mul22_data_flow.v)

- [Multiplier 2x2 using Half Adder](code/multiplier2x2.v)

- [4 bit Ripple Carry Adder](code/ripple_carry_adder_4bit.v)

- [4 bit Adder Cum Subtractor](code/adder_cum_sub_4bit.v)

- [4 bit Adder Cum Subtractor Using Full Adder](code/adder_cum_sub_4bit_fh.v)

- [3 bit Even Parity Generator](code/even_parity_3bit.v)

- [6 bit Even Parity Generator](code/even_parity_6bit.v)

- [6 bit Odd Parity Generator](code/odd_parity_6bit.v)

- [1 bit Magnitude Comparator](code/mag_comp_1bit.v)

- [4 bit Magnitude Comparator](code/magnitude_comp_4bit.v)

- [JK Flip Flop](code/jkff.v)

- [SR Flip Flop](code/srff.v)

- [T Flip Flop](code/tff.v)

- [D Flip Flop](code/dff.v)

- [ALU](code/alu.v)

- [Mealy Machine - output:1100](code/mealy_1100.v)

- [Mealy Machine - output:101](code/mealy_101.v)

- [Moore Machine - output:101](code/moore_101.v)

- [For Loop -1](code/forloop_1.v)

- [For Loop -2](code/forloop_2.v)

- [4 bit Up Counter](code/up_counter_design.v)

- [4 bit Down Counter](code/counter_design_down.v)

- [CMOS: Inverter](code/cmos_inverter.v)

- [CMOS: NAND](code/cmos_nand.v)

- [Expression-1 : (ac((~a)b)+ab(~c)) ](code/expression-1.v)

- [Expression-2 : (~a)(~b) + abc + (~a)b(~c)](code/expression-2.v)

- [Expression-3 : a(~b) + ab(~c) + (~b)c ( using 3:8 Decoder)](code/exp_using_decoder38.v)

- [Expression-4 : πm (1,3,5) +d(0,4) using gate level](code/expression-4.v)

- [Expression-5 : Y(a,b,c) = (a.b+c)' using 4:1 Mux](code/expression-5.v)

- [Expression-6 : Y(a,b,c) = (~a).(b+c) + ((~a).(~b)) using CMOS](code/cmos_for_exp.v)

## Truth Table Circuit Diagrams

- Half Adder

	- Truth Table

	![Truth Table](img/half_adder_table.png)

	- Circuit Diagram

	![Circuit Diagram](img/half_adder.png)

	Image Credit : 
		[wikipedia](https://en.wikipedia.org/wiki/Adder_(electronics))

- Full Adder

	- Truth Table

	![Truth Table](img/full_adder_table.png)

	- Circuit Diagram
	
	![Circuit Diagram](img/full_adder.png)

	Image Credit : 
		[GeeksforGeeks](https://www.geeksforgeeks.org/full-adder-in-digital-logic/) &
		[Wikipedia](https://en.wikipedia.org/wiki/Adder_(electronics))

- Half Subtractor

	- Truth Table

	![Truth Table](img/half_truth.png)

	- Circuit Diagram
	
	![Circuit Diagram](img/Half_Subtractor-1.jpg)

	Image Credit : 
		[GeeksforGeeks](https://www.geeksforgeeks.org/half-subtractor-in-digital-logic/)

- Full Subtractor

	- Truth Table

	![Truth Table](img/full-subtractor-truth-table.jpg)

	- Circuit Diagram
	
	![Circuit Diagram](img/Full-Subtractor.png)

	Image Credit : 
		[GeeksforGeeks](https://www.geeksforgeeks.org/full-subtractor-in-digital-logic/) &
		[Circuit Digest](https://circuitdigest.com/tutorial/full-subtractor-circuit-and-its-construction)

- 2x1 MUX 

	- Truth Table

	![Truth Table](img/2x1.png)

	Image Credit : 
		[GeeksforGeeks](https://www.geeksforgeeks.org/multiplexers-in-digital-logic/)

- 4x1 MUX

	- Truth Table

	![Truth Table](img/4x1_table.jpg)

	- Circuit Diagram
	
	![Circuit Diagram](img/4x1_dia.png)

	Image Credit : 
		[GeeksforGeeks](https://www.geeksforgeeks.org/multiplexers-in-digital-logic/)

- Binary To Graycode Converter

	- Truth Table

	![Truth Table](img/btog_table.png)

	- Circuit Diagram
	
	![Circuit Diagram](img/btog.jpg)

	Image Credit : 
		[Tutorialspoint](https://www.tutorialspoint.com/conversion-of-binary-to-gray-code)

- Graycode to Binary Converter

	- Truth Table

	![Truth Table](img/gtob_table.PNG)

	- Circuit Diagram
	
	![Circuit Diagram](img/gtob.jpg)

	Image Credit : 
		[Tutorialspoint](https://www.tutorialspoint.com/conversion-of-gray-code-to-binary)


- Ripple Carry Adder

	- Circuit Diagram
	
	![Circuit Diagram](img/ripple-carry-adder.png)

	Image Credit : 
		[Circuits Today](https://www.circuitstoday.com)


- 2x2 Multiplier

	- Truth Table & Circuit Diagram

	![Truth Table](img/img054.gif)

	Image Credit : 
		[CS Washington](https://courses.cs.washington.edu)

- 2:4 Decoder

	- Truth Table

	![Truth Table](img/truth-table-2-4.jpg)

	- Circuit Diagram
	
	![Circuit Diagram](img/2-to-4-Decoder-Circuit-1.jpg)

	Image Credit : 
		[Elprocus](https://www.elprocus.com)

- 3:8 Decoder

	- Truth Table

	![Truth Table](img/3-8_decoder.png)

	- Circuit Diagram
	
	![Circuit Diagram](img/3-to-8-Decoder-circuit.jpg)

	Image Credit : 
		[Elprocus](https://www.elprocus.com)


- 1 Bit Magnitude Comparator

	- Truth Table

	![Truth Table](img/comp_1bit.png)

	- Circuit Diagram
	
	![Circuit Diagram](img/comp_1bit_cir.png)

	Image Credit : 
		[Elprocus](https://www.elprocus.com) & [GeeksforGeeks](https://www.geeksforgeeks.org/)


- Even Parity Generator

	- Truth Table

	![Truth Table](img/Even-Parity-Generator-Truth-Table.jpg)

	- Circuit Diagram
	
	![Circuit Diagram](img/even-parity-logic-circuit.png)

	Image Credit : 
		[Elprocus](https://www.elprocus.com)


- JK Flip Flop

	![Truth Table & Circuit](img/J-K-flip-flop-diagram.jpg)

	Image Credit : 
		[All About Circuits](https://www.allaboutcircuits.com/)


- SR Flip Flop

	![Truth Table & Circuit](img/sr.png)

	Image Credit : 
		[Expertsmind](http://www.expertsmind.com/)


- D Flip Flop

	![Truth Table & Circuit](img/d-flipflop.jpeg)

	Image Credit : 
		[Quora](https://www.quora.com/)


- T Flip Flop

	![Truth Table & Circuit](img/T-Flip-Flop-Circuit-using-74HC74-Truth-Table.png)

	![Truth Table & Circuit](img/Standard-synchronous-Flip-Flops-a-T-Flip-Flop-b-JK-Flip-Flop.png)

	Image Credit : 
		[Circuits-diy](https://circuits-diy.com/) & [Research Gate](https://www.researchgate.net)