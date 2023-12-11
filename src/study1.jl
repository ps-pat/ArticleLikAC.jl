using MPI

using Simulations

using Moosh

MPI.Init()
comm = MPI.COMM_WORLD

frechet = p -> CopulaFrechet(PhenotypeBinary, AlphaDagum(), p)
ca = p -> CopulaCuadrasAuge(PhenotypeBinary, AlphaDagum(), p)
frechet_gompertz = p -> CopulaFrechet(PhenotypeBinary, AlphaGompertz(), p)
ca_gompertz = p -> CopulaCuadrasAuge(PhenotypeBinary, AlphaGompertz(), p)

study1(comm, frechet, "study1_frechet.data",
       n_is = 100000, f0 = 0.05, sample_prop = 2e-4, maf = 2.5e-1)

# study1(comm, ca, "study1_ca.data",
#        n_is = 100000, f0 = 0.05, sample_prop = 5e-4, maf = 2.5e-1)

study1(comm, frechet_gompertz, "study1_frechetg.data",
       n_is = 100000, f0 = 0.05, sample_prop = 2e-4, maf = 2.5e-1)

# study1(comm, ca_gompertz, "study1_cag.data",
#        n_is = 100000, f0 = 0.05, sample_prop = 5e-4, maf = 2.5e-1)

MPI.Finalize()
