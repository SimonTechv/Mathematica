(* ::Package:: *)

(* ::Input:: *)
(*(*\:041d\:0435\:043a\:043e\:0442\:043e\:0440\:044b\:0435 \:0440\:0435\:0437\:0443\:043b\:044c\:0442\:0430\:0442\:044b \:0441\:043f\:0435\:0446\:0438\:0430\:043b\:044c\:043d\:043e \:0441\:043a\:0440\:044b\:0442\:044b \:0447\:0442\:043e\:0431\:044b \:043d\:0435 \:0437\:0430\:0441\:043e\:0440\:044f\:0442\:044c \:0432\:044b\:0432\:043e\:0434 \:043f\:0440\:043e\:0433\:0440\:0430\:043c\:043c\:044b, \:0434\:043b\:044f \:0442\:043e\:0433\:043e \:0447\:0442\:043e\:0431\:044b \:043f\:0440\:043e\:0441\:043c\:043e\:0442\:0440\:0435\:0442\:044c \:043f\:0440\:043e\:043c\:0435\:0436\:0443\:0442\:043e\:0447\:043d\:044b\:0435 \:0432\:044b\:0447\:0438\:0441\:043b\:0435\:043d\:0438\:044f \:0443\:0431\:0435\:0440\:0438\:0442\:0435 ";" \:043f\:043e\:0441\:043b\:0435 \:0432\:044b\:0440\:0430\:0436\:0435\:043d\:0438\:0439, \:0440\:0435\:0437\:0443\:043b\:044c\:0442\:0430\:0442 \:043a\:043e\:0442\:043e\:0440\:044b\:0445 \:0432\:044b \:0445\:043e\:0442\:0438\:0442\:0435 \:0443\:0432\:0438\:0434\:0435\:0442\:044c, \:0434\:043b\:044f \:044d\:043a\:043e\:043d\:043e\:043c\:0438\:0438 \:0432\:0440\:0435\:043c\:0435\:043d\:0438 \:043a \:0431\:043b\:043e\:043a\:043d\:043e\:0442\:0430\:043c \:043f\:0440\:0438\:043b\:043e\:0436\:0435\:043d\:044b \:0420DF \:0434\:043e\:043a\:0443\:043c\:0435\:043d\:0442\:044b \:0441 \:0432\:044b\:0447\:0438\:0441\:043b\:0435\:043d\:043d\:044b\:043c\:0438 \:0437\:0430\:0434\:0430\:043d\:0438\:044f\:043c\:0438, \:043a\:043e\:0434 \:0441\:043a\:0440\:0438\:043f\:0442\:0430 \:043d\:0430\:0445\:043e\:0434\:0438\:0442\:0441\:044f \:0432 \:0440\:0435\:043f\:043e\:0437\:0438\:0442\:043e\:0440\:0438\:0438: https://github.com/SimonTechv/Mathematica *)*)
(*(*\:0417\:0410\:0414\:0410\:041d\:0418\:0415 2 \:0420\:0410\:0417\:041b\:041e\:0416\:0415\:041d\:0418\:0415 \:041d\:0410 \:041f\:0415\:0420\:0418\:041e\:0414\:0415 2l *)*)
(**)
(*f1 = x^2-4;                (*  x \[Element] [-8;-8/3) *)*)
(*f2 = 18;                          (*  x \[Element] [-8/3,8/3) *)*)
(*f3 = 7*x+11;             (*  x \[Element] [8/3,8]  *)*)
(**)
(*(*\:041f\:041e\:0421\:0422\:0420\:041e\:0418\:041c \:0413\:0420\:0410\:0424\:0418\:041a\:0418 \:041d\:0410 \:0423\:041a\:0410\:0417\:0410\:041d\:041d\:041e\:041c \:041f\:0415\:0420\:0418\:041e\:0414\:0415*)*)
(**)
(*original = Show[Plot[f1,{x,-8, -8/3},PlotStyle->{Red,Dashed},PlotLabels->{f1}],Plot[f2,{x,-8/3,8/3},PlotStyle->{Red,Dashed},PlotLabels->{f2}], Plot[f3,{x, 8/3, 8},PlotStyle->{Red,Dashed},PlotLabels->{f3}],PlotRange->{{-9,9},{0,70}},PlotLabel->Style["\:0413\:0440\:0430\:0444\:0438\:043a \:0430\:043f\:043f\:0440\:043e\:043a\:0441\:0438\:043c\:0438\:0440\:0443\:0435\:043c\:043e\:0439 \:0444\:0443\:043d\:043a\:0446\:0438\:0438",Italic,FontSize->14,FontColor->Black]]*)
(**)
(*(*\:041f\:0420\:041e\:0414\:041b\:0418\:041c \:0421 \:041f\:0415\:0420\:0418\:041e\:0414\:041e\:041c 2L \:041d\:0410 \:0412\:0421\:042e \:0427\:0418\:0421\:041b\:041e\:0412\:0423\:042e \:041e\:0421\:042c *)*)
(*a0 = 1/8*(\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-8\), *)
(*FractionBox[\(-8\), \(3\)]]\(f1 \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(-8\), \(3\)], *)
(*FractionBox[\(8\), \(3\)]]\(f2 \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(8\), \(3\)], \(8\)]\(f3 \[DifferentialD]x\)\));*)
(*an=1/8*(\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-8\), *)
(*FractionBox[\(-8\), \(3\)]]\(f1*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(-8\), \(3\)], *)
(*FractionBox[\(8\), \(3\)]]\(f2*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(8\), \(3\)], \(8\)]\(f3*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\));*)
(*bn=1/8*(\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-8\), *)
(*FractionBox[\(-8\), \(3\)]]\(f1*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(-8\), \(3\)], *)
(*FractionBox[\(8\), \(3\)]]\(f2*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\)+\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), *)
(*FractionBox[\(8\), \(3\)], \(8\)]\(f3*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] \[DifferentialD]x\)\));*)
(**)
(*(*\:0421\:0423\:041c\:041c\:0410 2 \:0427\:041b\:0415\:041d\:041e\:0412 \:0420\:042f\:0414\:0410 \:0424\:0423\:0420\:042c\:0415*)*)
(*FourierSum2 = a0/2+\!\( *)
(*\*UnderoverscriptBox[\(\[Sum]\), \(n = 1\), \(2\)]\((an*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] + bn*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]])\)\) ;*)
(*(*\:0421\:0423\:041c\:041c\:0410 20 \:0427\:041b\:0415\:041d\:041e\:0412 \:0420\:042f\:0414\:0410 \:0424\:0423\:0420\:042c\:0415*)*)
(*FourierSum20 = a0/2+\!\( *)
(*\*UnderoverscriptBox[\(\[Sum]\), \(n = 1\), \(20\)]\((an*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] + bn*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]])\)\) ;*)
(*(*\:0421\:0423\:041c\:041c\:0410 40 \:0427\:041b\:0415\:041d\:041e\:0412 \:0420\:042f\:0414\:0410 \:0424\:0423\:0420\:042c\:0415*)*)
(*FourierSum40 = a0/2+\!\( *)
(*\*UnderoverscriptBox[\(\[Sum]\), \(n = 1\), \(40\)]\((an*Cos[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]] + bn*Sin[*)
(*\*FractionBox[\(Pi*n*x\), \(8\)]])\)\);*)
(**)
(**)
(*FourierGraph2 = Plot[FourierSum2,{x,-100,100},PlotRange->{{-24,24},{0,70}},PlotLabel->Style["\:0410\:043f\:043f\:0440\:043e\:043a\:0441\:0438\:043c\:0430\:0446\:0438\:044f \:043f\:0435\:0440\:0432\:044b\:043c\:0438 2 \:0447\:043b\:0435\:043d\:0430\:043c\:0438 \:0440\:044f\:0434\:0430 \:0424\:0443\:0440\:044c\:0435",Italic,FontSize->14,FontColor->Black]]*)
(*FourierGraph20 = Plot[FourierSum20,{x,-100,100},PlotRange->{{-24,24},{0,70}},PlotLabel->Style["\:0410\:043f\:043f\:0440\:043e\:043a\:0441\:0438\:043c\:0430\:0446\:0438\:044f \:043f\:0435\:0440\:0432\:044b\:043c\:0438 20 \:0447\:043b\:0435\:043d\:0430\:043c\:0438 \:0440\:044f\:0434\:0430 \:0424\:0443\:0440\:044c\:0435",Italic,FontSize->14,FontColor->Black]]*)
(*FourierGraph40 = Plot[FourierSum40,{x,-100,100},PlotRange->{{-24,24},{0,70}},PlotLabel->Style["\:0410\:043f\:043f\:0440\:043e\:043a\:0441\:0438\:043c\:0430\:0446\:0438\:044f \:043f\:0435\:0440\:0432\:044b\:043c\:0438 40 \:0447\:043b\:0435\:043d\:0430\:043c\:0438 \:0440\:044f\:0434\:0430 \:0424\:0443\:0440\:044c\:0435",Italic,FontSize->14,FontColor->Black]]*)
(*Show[FourierGraph2, Plot[f1,{x,-8, -8/3},PlotStyle->{Red,Dashed}],Plot[f2,{x,-8/3,8/3},PlotStyle->{Red,Dashed}], Plot[f3,{x, 8/3, 8},PlotStyle->{Red,Dashed}],*)
(*PlotRange->{{-8,8},{0,70}},GridLines->Automatic]*)
(*Show[FourierGraph20, Plot[f1,{x,-8, -8/3},PlotStyle->{Red,Dashed}],Plot[f2,{x,-8/3,8/3},PlotStyle->{Red,Dashed}], Plot[f3,{x, 8/3, 8},PlotStyle->{Red,Dashed}],PlotRange->{{-8,8},{0,70}},GridLines->Automatic]*)
(*Show[FourierGraph40, Plot[f1,{x,-8, -8/3},PlotStyle->{Red,Dashed}],Plot[f2,{x,-8/3,8/3},PlotStyle->{Red,Dashed}], Plot[f3,{x, 8/3, 8},PlotStyle->{Red,Dashed}],PlotRange->{{-8,8},{0,70}},GridLines->Automatic]*)
(**)
(**)



