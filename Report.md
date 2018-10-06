# Report
To run the test on register file, please clone the repo and run following the commands below:
```terminal
$ git clone https://github.com/QingmuDeng/HW4.git
$ cd HW4/
$ bash test.sh
```

## Deliverable 1:
### Schematic for Design 1
```verilog
always @(posedge clk) begin
    if(wrenable) begin
        q <= d;
    end
end
```
![Design1](https://github.com/QingmuDeng/HW4/blob/master/register1.jpg)

### Schematic for Design 2
```verilog
// Gated clock - avoid this style
always @(posedge (clk & wrenable)) begin
	q <= d;
end
```
![Design2](https://github.com/QingmuDeng/HW4/blob/master/register2.jpg)

## Deliverable 6:

Bit shift is the essence of how the above behavorial Verilog constitues a decoder. A left bit shift is the same concept as multiplying a number by two. When Enable bit is zero, no matter what you multiply 0 (Enable false) by, the result is still always gonna be zero. However, when 1 (Enable True) is bit shift to the left, the number N of positions that 1 gets left shift by is the same as putting everything but the Nth bit high, if we start counting the bit number from zero.

Here are a few examples:

8b'1 << 0 = 8b'00000001
8b'1 << 1 = 8b'00000010
8b'1 << 4 = 8b'00010000
8b'1 << 7 = 8b'10000000

## Test Cases:

1. Write '42' to register 2, verify with Read Ports 1 and 2.
2. Write '15' to register 2, verify with Read Ports 1 and 2.
3. Read register zero with Read Ports 1 and 2 and verify that the read result is actually zero despite any write operation.
4. Test whether Write Enable is broken / ignored by writing to a register with Write Enable false. Verify by reading that register back from Read Ports 1 and 2.
5. Test whether decoder is broken by checking whether the write spilled into other registers. Check by reading the registers back through Read Ports 1 and 2. Test bench written in a for loop.
6. Test whether Port 2 is broken and always reads register as the same number every time
7. Test whether Port 1 is broken and always read register as the same number every time
8. Test whether Write happens even if no rising clock edge occurs and verify by reading back from Read Ports 1 and 2
9. Test whether Read Ports 1 and 2 are independent of each other rather than just a copy of the other. Verify by reading two different ports with different values at the same time and compare results
