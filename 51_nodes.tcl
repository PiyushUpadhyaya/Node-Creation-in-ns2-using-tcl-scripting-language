# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
#===================================
set val(stop)   100.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Open the NS trace file
set tracefile [open out.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open out.nam w]
$ns namtrace-all $namfile

#===================================
#        Nodes Definition        
#===================================
#Create 61 nodes
set n0 [$ns node]
set n1 [$ns node]
set sink1 [new Agent/TCPSink/DelAck]   
$ns attach-agent $n1 $sink1
set n2 [$ns node]
set n3 [$ns node]
set sink1 [new Agent/TCPSink/DelAck]   
$ns attach-agent $n3 $sink1
set n4 [$ns node]
set sink1 [new Agent/TCPSink/DelAck]   
$ns attach-agent $n4 $sink1
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set tcp1 [new Agent/TCP/Newreno]   
$ns attach-agent $n7 $tcp1
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]
set n12 [$ns node]
set n13 [$ns node]
set n14 [$ns node]
set n15 [$ns node]
set n16 [$ns node]
set n17 [$ns node]
set n18 [$ns node]
set n19 [$ns node]
set n20 [$ns node]
set n21 [$ns node]
set n22 [$ns node]
set n23 [$ns node]
set n24 [$ns node]
set n25 [$ns node]
set n26 [$ns node]
set n27 [$ns node]
set n28 [$ns node]
set n29 [$ns node]
set n30 [$ns node]
set n31 [$ns node]
set n32 [$ns node]
set n33 [$ns node]
set n34 [$ns node]
set n35 [$ns node]
set n36 [$ns node]
set n37 [$ns node]
set n38 [$ns node]
set n39 [$ns node]
set n40 [$ns node]
set n41 [$ns node]
set n42 [$ns node]
set n43 [$ns node]
set n44 [$ns node]
set n45 [$ns node]
set n46 [$ns node]
set n47 [$ns node]
set n48 [$ns node]
set n49 [$ns node]
set n50 [$ns node]
set n51 [$ns node]
set sink1 [new Agent/TCPSink/DelAck]   
$ns attach-agent $n51 $sink1

set n52 [$ns node]
set n53 [$ns node]
set n54 [$ns node]
set n55 [$ns node]
set n56 [$ns node]
set n57 [$ns node]
set n58 [$ns node]
set n59 [$ns node]
set n60 [$ns node]
$n60 color red

set tcp1 [new Agent/TCP/Newreno]   
$ns attach-agent $n60 $tcp1

#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
$ns duplex-link $n60 $n9 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n9 50
$ns duplex-link $n10 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n10 $n60 50
$ns duplex-link $n11 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n11 $n60 50
$ns duplex-link $n12 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n12 $n60 50
$ns duplex-link $n13 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n13 $n60 50
$ns duplex-link $n14 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n14 $n60 50
$ns duplex-link $n15 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n15 $n60 50
$ns duplex-link $n16 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n16 $n60 50
$ns duplex-link $n17 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n17 $n60 50
$ns duplex-link $n18 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n18 $n60 50
$ns duplex-link $n19 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n19 $n60 50
$ns duplex-link $n8 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n8 $n60 50
$ns duplex-link $n7 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n7 $n60 50
$ns duplex-link $n6 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n6 $n60 50
$ns duplex-link $n5 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n5 $n60 50
$ns duplex-link $n4 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n4 $n60 50
$ns duplex-link $n3 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n3 $n60 50
$ns duplex-link $n2 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n2 $n60 50
$ns duplex-link $n1 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n1 $n60 50
$ns duplex-link $n0 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n0 $n60 50
$ns duplex-link $n20 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n20 $n60 50
$ns duplex-link $n21 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n21 $n60 50
$ns duplex-link $n22 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n22 $n60 50
$ns duplex-link $n23 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n23 $n60 50
$ns duplex-link $n25 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n25 $n60 50
$ns duplex-link $n26 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n26 $n60 50
$ns duplex-link $n27 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n27 $n60 50
$ns duplex-link $n28 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n28 $n60 50
$ns duplex-link $n29 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n29 $n60 50
$ns duplex-link $n60 $n30 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n30 50
$ns duplex-link $n31 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n31 $n60 50
$ns duplex-link $n60 $n32 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n32 50
$ns duplex-link $n33 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n33 $n60 50
$ns duplex-link $n35 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n35 $n60 50
$ns duplex-link $n34 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n34 $n60 50
$ns duplex-link $n60 $n36 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n36 50
$ns duplex-link $n60 $n37 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n37 50
$ns duplex-link $n38 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n38 $n60 50
$ns duplex-link $n39 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n39 $n60 50
$ns duplex-link $n60 $n49 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n49 50
$ns duplex-link $n48 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n48 $n60 50
$ns duplex-link $n47 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n47 $n60 50
$ns duplex-link $n60 $n46 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n46 50
$ns duplex-link $n45 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n45 $n60 50
$ns duplex-link $n60 $n44 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n44 50
$ns duplex-link $n43 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n43 $n60 50
$ns duplex-link $n42 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n42 $n60 50
$ns duplex-link $n41 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n41 $n60 50
$ns duplex-link $n40 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n40 $n60 50
$ns duplex-link $n60 $n50 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n50 50
$ns duplex-link $n60 $n51 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n51 50
$ns duplex-link $n52 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n52 $n60 50
$ns duplex-link $n53 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n53 $n60 50
$ns duplex-link $n60 $n54 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n54 50
$ns duplex-link $n55 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n55 $n60 50
$ns duplex-link $n56 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n56 $n60 50
$ns duplex-link $n60 $n57 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n57 50
$ns duplex-link $n58 $n60 100.0Mb 10ms DropTail
$ns queue-limit $n58 $n60 50
$ns duplex-link $n60 $n59 100.0Mb 10ms DropTail
$ns queue-limit $n60 $n59 50

#Give node position (for NAM)
$ns duplex-link-op $n60 $n9 orient left-up
$ns duplex-link-op $n10 $n60 orient right-down
$ns duplex-link-op $n11 $n60 orient left-down
$ns duplex-link-op $n12 $n60 orient left-down
$ns duplex-link-op $n13 $n60 orient left-down
$ns duplex-link-op $n14 $n60 orient left-down
$ns duplex-link-op $n15 $n60 orient left-down
$ns duplex-link-op $n16 $n60 orient left-down
$ns duplex-link-op $n17 $n60 orient left-down
$ns duplex-link-op $n18 $n60 orient left-down
$ns duplex-link-op $n19 $n60 orient left-down
$ns duplex-link-op $n8 $n60 orient right-down
$ns duplex-link-op $n7 $n60 orient right-down
$ns duplex-link-op $n6 $n60 orient right-down
$ns duplex-link-op $n5 $n60 orient right-down
$ns duplex-link-op $n4 $n60 orient right-down
$ns duplex-link-op $n3 $n60 orient right-down
$ns duplex-link-op $n2 $n60 orient right-down
$ns duplex-link-op $n1 $n60 orient right-down
$ns duplex-link-op $n0 $n60 orient right-down
$ns duplex-link-op $n20 $n60 orient right
$ns duplex-link-op $n21 $n60 orient right
$ns duplex-link-op $n22 $n60 orient right
$ns duplex-link-op $n23 $n60 orient right
$ns duplex-link-op $n25 $n60 orient right
$ns duplex-link-op $n26 $n60 orient right
$ns duplex-link-op $n27 $n60 orient right
$ns duplex-link-op $n28 $n60 orient right
$ns duplex-link-op $n29 $n60 orient right
$ns duplex-link-op $n60 $n30 orient right
$ns duplex-link-op $n31 $n60 orient left

$ns duplex-link-op $n60 $n32 orient right
$ns duplex-link-op $n33 $n60 orient left

$ns duplex-link-op $n35 $n60 orient left

$ns duplex-link-op $n34 $n60 orient left

$ns duplex-link-op $n60 $n36 orient right
$ns duplex-link-op $n60 $n37 orient right
$ns duplex-link-op $n38 $n60 orient left

$ns duplex-link-op $n39 $n60 orient left

$ns duplex-link-op $n60 $n49 orient left-down
$ns duplex-link-op $n48 $n60 orient right-up
$ns duplex-link-op $n47 $n60 orient right-up
$ns duplex-link-op $n60 $n46 orient left-down
$ns duplex-link-op $n45 $n60 orient right-up
$ns duplex-link-op $n60 $n44 orient left-down
$ns duplex-link-op $n43 $n60 orient right-up
$ns duplex-link-op $n42 $n60 orient right-up
$ns duplex-link-op $n41 $n60 orient right-up
$ns duplex-link-op $n40 $n60 orient right-up
$ns duplex-link-op $n60 $n50 orient right-down
$ns duplex-link-op $n60 $n51 orient right-down
$ns duplex-link-op $n52 $n60 orient left-up
$ns duplex-link-op $n53 $n60 orient left-up
$ns duplex-link-op $n60 $n54 orient right-down
$ns duplex-link-op $n55 $n60 orient left-up
$ns duplex-link-op $n56 $n60 orient left-up
$ns duplex-link-op $n60 $n57 orient right-down
$ns duplex-link-op $n58 $n60 orient left-up
$ns duplex-link-op $n60 $n59 orient right-down

#===================================
#        Agents Definition        
#===================================

#===================================
#        Applications Definition        
#===================================

#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
    exec awk -f e2edelay.awk out.tr > output.tr &
    exit 0
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
