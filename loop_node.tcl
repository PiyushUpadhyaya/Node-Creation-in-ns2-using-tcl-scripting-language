# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
#===================================
set val(stop)   10.0                         ;# time of simulation end

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
set NumbSrc 6;
for {set j 0} {$j<=$NumbSrc} { incr j } {
     
	if {$j == $NumbSrc} {
	 set n($j) [$ns node]
	$n($j) color red
	$n($j) label Centralized
	$n($j) shape square
	} else {
	 set n($j) [$ns node]
}
  }
#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
for {set j 0} {$j<$NumbSrc} { incr j } {
 	$ns duplex-link $n($NumbSrc) $n($j) 100.0Mb 10ms DropTail
	$ns queue-limit $n($NumbSrc) $n($j) 50
 }

#Give node position (for NAM)
for {set j 0} {$j<$NumbSrc} { incr j } {
	if {$j < 10} {
		$ns duplex-link-op $n($NumbSrc) $n($j) orient right-down    
		     } elseif {9 < $j < 20} {
		$ns duplex-link-op $n($j) $n($NumbSrc) orient left-down
		     } elseif {19 < $j < 30} {
		$ns duplex-link-op $n($j) $n($NumbSrc) orient right
		     } elseif {29 < $j < 40} {
		$ns duplex-link-op $n($j) $n($NumbSrc) orient left
		     } elseif {39 < $j < 50} {
		$ns duplex-link-op $n($j) $n($NumbSrc) orient right-up
		     } else {
		$ns duplex-link-op $n($j) $n($NumbSrc) orient left-up
	     	     }
}

#===================================
#        Agents Definition        
#===================================
for {set j 0} {$j < $NumbSrc} { incr j } {
	set tcp($j) [new Agent/TCP]
	$ns attach-agent $n($j) $tcp($j)
	set sink($j) [new Agent/TCPSink]
	$ns attach-agent $n($NumbSrc) $sink($j)
	$ns connect $tcp($j) $sink($j)
	$tcp($j) set packetSize_ 1500
}
#===================================
#        Applications Definition        
#===================================
#Setup a FTP Application over TCP connection
for {set j 0} {$j < $NumbSrc} { incr j } {
	set ftp($j) [new Application/FTP]
	$ftp($j) attach-agent $tcp($j)
	$ns at 1.0 "$ftp($j) start"
	$ns at 9.0 "$ftp($j) stop"
}
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
