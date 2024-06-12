@echo off
title DIP LAB EXAM
setlocal enabledelayedexpansion

REM Define array of MATLAB script names
set qs[0]=Q1_display_grayscale_image.m
set qs[1]=Q2_find_histogram_value_and_display_histograph.m
set qs[2]=Q3_NonLinear_Filtering_technique_using_edge_detection.m
set qs[3]=Q4_edge_detection_using_different_operators.m
set qs[4]=Q5_discretize_image_using_Fourier_transformation.m
set qs[5]=Q6_eliminate_high_frequency_components_of_image.m
set qs[6]=Q7_color_image_processing_and_perform_read_and_write_operation.m
set qs[7]=Q8_resolved_color_values_from_a_color_box.m
set qs[8]=Q9_discrete_wavelet_transform_on_image.m
set qs[9]=Q10_segmentation_of_image_using_watershed_transforms.m
set qs[10]=Q11_image_of_negative_binary_and_grayscale.m
set qs[11]=Q12_implementation_of_relationships_between_pixels.m
set qs[12]=Q13_implementation_of_transformations_of_image.m
set qs[13]=Q14_contrast_stretching_histogram_and_histogram_equalization.m
set qs[14]=Q15_display_of_bit_planes_of_image.m
set qs[15]=Q16_display_of_FFT_1D_and_2D_of_image.m
set qs[16]=Q17_computation_of_mean_standard_deviation.m
set qs[17]=Q18_implementation_of_image_smoothening_filters.m
set qs[18]=Q19_image_sharpening_filters_and_edge_detection.m
set qs[19]=Q20_image_compression_by_DCT_DPCM_HUFFMAN_coding.m
set qs[20]=Q21_implementation_of_image_restoring_techniques.m
set qs[21]=Q22_implementation_of_image_intensity_slicing_technique.m
set qs[22]=Q23_Canny_edge_detection_algorithm.m

set /p input1="Enter your 1st question number: "
color 3F
set /p input2="Enter your 2nd question number: "

set /a input1-=1
set /a input2-=1

if %input1% geq 0 if %input1% leq 22 if %input2% geq 0 if %input2% leq 22 (
	echo Running script: !qs[%input1%]!
	echo Running script: !qs[%input2%]!
	start matlab -nosplash -wait -r "run('!qs[%input1%]!');  run('!qs[%input2%]!');"
) else (
	echo question number ta toh thik kore de.
)

pause
