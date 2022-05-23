<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>IntiAir</title>
    <link rel="stylesheet" href="css/reservation_inscription.css">
    </link>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    </link>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    </link>
</head>

<body>
    <form method="post">
        <section class="h-100 h-custom gradient-custom-2">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="p-5">
                                            <h3 class="fw-normal mb-5" style="color: #4835d4;">Informations g�n�rales
                                            </h3>

                                            <div class="row">
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <label class="form-label" for="form3Examplev2">Nom *</label>
                                                        <input type="text" id="form3Examplev2" name="form3Examplev2"
                                                            class="form-control form-control-lg" />
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <label class="form-label" for="form3Examplev3">Pr�nom *</label>
                                                        <input type="text" id="form3Examplev3" name="form3Examplev3"
                                                            class="form-control form-control-lg" />

                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Examplev4">Email *</label>
                                                    <input type="text" id="form3Examplev4" name="form3Examplev4"
                                                        class="form-control form-control-lg" />
                                                </div>
                                            </div>



                                            <div class="mb-4 pb-2">
                                                <label class="form-label" for="form3Examplev5">Nombre de bagages en
                                                    soute *</label>
                                                <br>
                                                <select class="select" name="form3Examplev5">
                                                    <option value="0" selected>Aucun</option>
                                                    <option value="1">1 bagage</option>
                                                    <option value="2">2 bagages</option>
                                                    <option value="3">3 bagages</option>
                                                    <option value="4">4 bagages</option>
                                                </select>

                                            </div>


                                            <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <h5 id="form3Examplev4" style="margin-top: 30px;"></h5>
                                                    <label class="form-label" for="form3Examplev4">(*) : Champs
                                                        requis</label>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-lg-6 bg-indigo text-white">
                                        <div class="p-5">
                                            <h3 class="fw-normal mb-5">D�tails suppl�mentaires</h3>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <label class="form-label" for="form3Examplea2">Adresse</label>
                                                    <input type="text" id="form3Examplea2" name="form3Examplea2"
                                                        class="form-control form-control-lg" />

                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <label class="form-label" for="form3Examplea3">Date de
                                                        Naissance (aaaa-mm-jj)</label>
                                                    <input type="text" id="form3Examplea3" name="form3Examplea3"
                                                        class="form-control form-control-lg" />
                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <label class="form-label" for="form3Examplea6">Num�ro de
                                                        t�l�phone</label>
                                                    <input type="text" id="form3Examplea6" name="form3Examplea6"
                                                        class="form-control form-control-lg" />
                                                </div>
                                            </div>

                                            <div class="form-check d-flex justify-content-start mb-4 pb-3">
                                                <input class="form-check-input me-3" type="checkbox" value=""
                                                    id="form2Example3c" name="form2Example3c" />
                                                <label class="form-check-label text-white" for="form2Example3c">
                                                    J'accepte les <a href="#!" class="text-white"><u>Termes et
                                                            Conditions</u></a> du site.
                                                </label>
                                            </div>

                                            <input type="submit" class="btn btn-light btn-lg"
                                                data-mdb-ripple-color="dark">Enregistrer le billet</input>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

</body>

</html>