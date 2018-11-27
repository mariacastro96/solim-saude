import "bootstrap";
// $(".nav--item").click(function(){
// 	var val = $(this).attr('data-tab-target');
// 	console.log(val);
//
// 	$('.nav--item').removeClass('-is--active');
// 	$(this).addClass('-is--active');
//
// 	$(".tabset--content").attr('data-active-tab', val);
//
// });

import { tabSolim } from '../components/solim';
tabSolim();

import { tabProject } from '../components/project';
tabProject();

import { tabQuestions } from '../components/questions';
tabQuestions();
