using MPI

using Simulations

using Moosh

MPI.Init()
comm = MPI.COMM_WORLD

frechet = p -> CopulaFrechet(PhenotypeBinary, AlphaDagum(), p)
ca = p -> CopulaCuadrasAuge(PhenotypeBinary, AlphaDagum(), p)

study1(comm, frechet, "study1_frechet_test.data",
       n_is = 10000, f0 = 0.05, sample_prop = 7.5e-5, maf = 2.5e-1)

study1(comm, ca, "study1_ca_test.data",
       n_is = 10000, f0 = 0.05, sample_prop = 7.5e-5, maf = 2.5e-1)

MPI.Finalize()
