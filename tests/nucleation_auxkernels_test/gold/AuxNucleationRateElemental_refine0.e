CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_elem_var      num_info  1         api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         %AuxNucleationRateElemental_refine0.e       maximum_name_length                 #   
time_whole                            p    	eb_status                             	�   eb_prop1               name      ID              	�   	ns_status         	                    	�   ns_prop1      	         name      ID              	�   	ss_status         
                    	�   ss_prop1      
         name      ID              	�   coordx                      �      	�   coordy                      �      
�   eb_names                       $      �   ns_names      	                 �      �   ss_names      
                 �      4   
coor_names                         D      �   connect1                  	elem_type         QUAD4               �   elem_num_map                    @      �   elem_ss1                          <   side_ss1                          L   elem_ss2                          \   side_ss2                          l   elem_ss3                          |   side_ss3                          �   elem_ss4                          �   side_ss4                          �   node_ns1                          �   node_ns2                          �   node_ns3                          �   node_ns4                          �   vals_nod_var1                          �      p(   vals_nod_var2                          �      p�   name_nod_var                       D         name_elem_var                          D      P   vals_elem_var1eb1                          �      q�   vals_elem_var2eb1                          �      r8   elem_var_tab                             �   info_records                      `�      �                                                                 @       @               @      @      @      @      @       @       @               @      @      @       @               @      @      @       @               @      @      @                       @       @               @               @               @       @      @      @      @      @      @      @      @      @      @      @       @       @       @       @                                           bottom                           left                             right                            top                              bottom                           left                             right                            top                                                                                                                                            	   
                                             
                                                                                                                                 	   
                                                   	                                                                              	                  	   
                        concentration                    n1                                 elemental_Supersaturation ��?� �elemental_NucleationRate l&?�/Iض�A      ####################?쇝(~|�?ᰶ�`��?� �0
�?�U@�L\;?ᰶ�`��?�TR�dl&?�/Iض�A?���l# Created by MOOSE #�#b�{<�?���E���?�l4�z;?�u�N��?���E���?�w�����?��l?�`�?f<[��####################�*�9Gd?�U&Rr��?^��n�^�?�����?�� �$*?��G�H?��<���e?���=### Command Line Arguments ###���?���m>�:?� '�	?°�~���?�nM�c�?ŵ��b�;?z8�\�-e|�}-�?�`�z��                                                                 -i                                                                               tests/nucleation_auxkernels_test/AuxNucleationRate_refine0Elemental.i                                                                                             ### Version Info ###                                                             Framework Information:                                                           SVN Revision:            16583                                                   PETSc Version:           3.3.0                                                   Current Time:            Thu Feb  7 16:17:32 2013                                Executable Timestamp:    Thu Feb  7 15:55:34 2013                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 _moose_app                     = 0x7ffff5b4fa20                                  block                          =                                                 coord_type                     =                                                 dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               fe_cache                       = 0                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       order                          = AUTO                                            active_bcs                     =                                                 active_kernels                 =                                                 inactive_bcs                   =                                                 inactive_kernels               =                                                 start                          = 0                                               long_name                      =                                                 mesh                           = 0x18a8db0                                     []                                                                                                                                                                [AuxKernels]                                                                                                                                                        [./NucleationRate]                                                                 _moose_app                   = 0x7ffff5b4fa20                                    type                         = AuxNucleationRate                                 Beta_star                    = 100                                               Kb                           = 1.38065e-23                                       OP_var_names                 = n1                                                Z                            = 0.1                                               block                        =                                                   boundary                     =                                                   coupled_aux_var              = elemental_Supersaturation                         execute_on                   = timestep                                          gamma                        = 0.18                                              linear_density               = 5                                                 long_name                    = AuxKernels/NucleationRate                         n_OP_vars                    = 1                                                 scale_factor                 = 9e-20                                             temperature                  = 473                                               variable                     = elemental_NucleationRate                        [../]                                                                                                                                                             [./Supersaturation]                                                                _moose_app                   = 0x7ffff5b4fa20                                    type                         = AuxSupersaturation                                block                        =                                                   boundary                     =                                                   coupled_var                  = concentration                                     execute_on                   = timestep                                          functional_c1                = 0.006                                             long_name                    = AuxKernels/Supersaturation                        variable                     = elemental_Supersaturation                       [../]                                                                          []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./elemental_NucleationRate]                                                       _moose_app                   = 0x7ffff5b4fa20                                    block                        =                                                   family                       = MONOMIAL                                          initial_condition            = 0                                                 order                        = CONSTANT                                          scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./elemental_Supersaturation]                                                      _moose_app                   = 0x7ffff5b4fa20                                    block                        =                                                   family                       = MONOMIAL                                          initial_condition            = 0                                                 order                        = CONSTANT                                          scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                                                                                                [BCs]                                                                                                                                                               [./Periodic]                                                                       _moose_app                   = 0x7ffff5b4fa20                                                                                                                     [./all]                                                                            _moose_app                 = 0x7ffff5b4fa20                                      auto_direction             = 'x y'                                               inv_transform_func         =                                                     primary                    =                                                     secondary                  =                                                     transform_func             =                                                     translation                =                                                     variable                   = concentration                                     [../]                                                                          [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      _moose_app                     = 0x7ffff5b4fa20                                  l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = '-snes_mf_operator -ksp_monitor'                petsc_options_iname            =                                                 petsc_options_value            =                                                 scheme                         = backward-euler                                  type                           = Transient                                       _fe_problem                    = 0x18aeec0                                       abort_on_solve_fail            = 0                                               dt                             = 0.001                                           dtmax                          = 1e+30                                           dtmin                          = 0                                               end_time                       = 1e+30                                           growth_factor                  = 2                                               long_name                      = Executioner                                     n_startup_steps                = 0                                               num_steps                      = 2                                               predictor_scale                =                                                 restart_file_base              =                                                 ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1.79769e+308                                   time_dt                        =                                                 time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 time_t                         =                                                 trans_ss_check                 = 0                                               use_AB2                        = 0                                               use_littlef                    = 0                                             []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff2]                                                                          _moose_app                   = 0x7ffff5b4fa20                                    type                         = Diffusion                                         block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/diff2                                     save_in                      =                                                   variable                     = n1                                              [../]                                                                                                                                                             [./diffusion]                                                                      _moose_app                   = 0x7ffff5b4fa20                                    type                         = Diffusion                                         block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/diffusion                                 save_in                      =                                                   variable                     = concentration                                   [../]                                                                                                                                                             [./time_deriv_diff]                                                                _moose_app                   = 0x7ffff5b4fa20                                    type                         = TimeDerivative                                    block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/time_deriv_diff                           lumping                      = 0                                                 save_in                      =                                                   variable                     = concentration                                   [../]                                                                                                                                                             [./time_deriv_diff2]                                                               _moose_app                   = 0x7ffff5b4fa20                                    type                         = TimeDerivative                                    block                        =                                                   diag_save_in                 =                                                   long_name                    = Kernels/time_deriv_diff2                          lumping                      = 0                                                 save_in                      =                                                   variable                     = n1                                              [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             _moose_app                     = 0x7ffff5b4fa20                                  displacements                  =                                                 uniform_refine                 = 0                                               ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = GeneratedMesh                                   block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 centroid_partitioner_direction =                                                 construct_side_list_from_node_list = 0                                           partitioner                    =                                                 second_order                   = 0                                               dim                            = 2                                               elem_type                      = QUAD4                                           file                           =                                                 long_name                      = Mesh                                            nemesis                        = 0                                               nx                             = 4                                               ny                             = 4                                               nz                             = 0                                               xmax                           = 8                                               xmin                           = 0                                               ymax                           = 8                                               ymin                           = 0                                               zmax                           = 0                                               zmin                           = 0                                             []                                                                                                                                                                [Output]                                                                           _moose_app                     = 0x7ffff5b4fa20                                  elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = AuxNucleationRateElemental_refine0              gmv                            = 0                                               gnuplot_format                 = ps                                              hidden_variables               =                                                 interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 15                                              nemesis                        = 0                                               num_restart_files              = 0                                               output_displaced               = 0                                               output_es_info                 = 1                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               =                                                 perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./concentration]                                                                  _moose_app                   = 0x7ffff5b4fa20                                    block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                                                                                                    [./InitialCondition]                                                               _moose_app                 = 0x7ffff5b4fa20                                      type                       = RandomIC                                            block                      =                                                     long_name                  = Variables/concentration/InitialCondition            max                        = 1                                                   min                        = 0                                                   seed                       = 0                                                   variable                   = concentration                                     [../]                                                                          [../]                                                                                                                                                             [./n1]                                                                             _moose_app                   = 0x7ffff5b4fa20                                    block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                                                                                                    [./InitialCondition]                                                             [../]                                                                          [../]                                                                          []                                                                                          ?���E���?�#b�{<�?ա��c?�sYLk��?�l4�z<?����5�P?�u�N��?�뒈~?���E���?�sYLk��?쇝(~|�?ᰶ�`��?� �0
�?�U@�L\;?ᰶ�`��?�TR�dl&?�/Iض�A?���l%}�?� 7$s�'?�/Iض�C?�#b�{<�?���E���?�l4�z;?�u�N��?���E���?�w�����?��l?�`�?f<[��Jm?�A�����?��2��y?��*�9Gd?�U&Rr��?^��n�^�?�����?�� �$*?��G�H?��<���e?���=�?�o`��}?���0?���Qb��?�(����?���m>�:?� '�	?°�~���?�nM�c�?ŵ��b�;?z8�\�?�|�}-�?�`�z��                                                                                                                                                                                                                                                                ?PbM���?���7<1?�'d34�4?ե��,�?�t��Dl?�sdu|?�0����:?̠,��K�?뢇?ۇ�?���7<2?�t��Dm?쁸���?��'Bf[?�|4��?���_c�?��'Bf\?�_�T�J�?�-��&=R?��k���?��A�u�?�-��&=T?�'d34�3?���7<0?�sdu{?̠,��K�?���7<1?���[�?���ʉ��?h,cc�Ʊ?�8�W�\?��`<'?��h ��E?�f�
�5~?`M��	!?���>�?��w!��?�9cg�?����O��?�G�#�?�x�[J9?��SN�T?�<�)ӽ�?��롙?�����8?�#EYz?³����?�iђYf]?Ŵ{z?z��eAk?���⸧�?�]f�M?ޅ�kFA�?׽�����?�p	-lP?���� ?��\��u?޼��7=�?ڎ�Eڑ?���"�?��>�;?倕��ϡ?��|S��Z?ڵ�2���?ސ��!�N?��[�?�Y{�J?�Ap����@Jd�W �@6�n&T9@G�;o��B@T��-��V@WS���r�@J�Y<�@Af.���@J��'�h@Q� ��<�@^��L��@=�\Ś        @:�(mp@T��͔�@L5	�I�@'=EV��?`bM���?���;�?�+`xun�?թ5x��?�v{PX�?�����`?��5���?����}?�0��1?���;�?�v{PX�?�{����%?���!$�?�a�&�?���O���?���!$�?�j��t[?�,nU��w?���-�1?��*ϋ�?�,nU��y?�+`xun�?���;�?�����_?����?���;�?���#�%v?���_��?ju?�/�fg��?�'�2th?���� ?�w�N�%?aF�UC�K?��q]?�3{��?���	[	?�����_�?�o��0?��T�_.G?�����?��N�Bd�?�(:�h�?���G{_�?��]��?µGZv��?�e_GZ�?ųp����?{�|�O$?���"*�`?�ZE���?ކ1�g�?���j�d?�p^[�ej?��D��]?��9S��?޽��E��?ڐlU�)�?�Ս�na?�� w۠K?�~�O���?���]�,?ڸT��?ޑ��?� �.���?�X�?�?�B�����@Jf��e@6�z�O�f@G�tA)�@T򉉐�@WQd6�@J�\�6+�@Ao���N@J*�ڊj@Q���׮�@^�vB��@=�KbE��        @:����@T�R��p@L2��E~@'?ህ��