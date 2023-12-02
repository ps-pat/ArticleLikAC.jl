using MPI

using Simulations

MPI.Init()
comm = MPI.COMM_WORLD

study1(comm, n_is = 10000, f0 = 0.05, sample_prop = 5e-5, maf = 2.5e-1)

MPI.Finalize()
