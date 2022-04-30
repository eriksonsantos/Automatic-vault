transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/somadorErro.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/senhaReset.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/senha.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/erro.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/comparatorsenhaReset.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/comparatorsenha.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/comparatorerro.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/blocoOperacional.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/blocoDeControle.vhd}
vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/cofreAutomatico.vhd}

vcom -93 -work work {C:/Users/joaop/OneDrive/햞ea de Trabalho/Projeto Final/Cofre-Automatico-FINAL/Cofre-Automatico/tb_cofreAutomatico.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_cofreAutomatico

add wave *
view structure
view signals
run 500 ns
