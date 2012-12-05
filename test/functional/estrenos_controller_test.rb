require 'test_helper'

class EstrenosControllerTest < ActionController::TestCase
  setup do
    @estreno = estrenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estrenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estreno" do
    assert_difference('Estreno.count') do
      post :create, estreno: { categoria: @estreno.categoria, descripcion: @estreno.descripcion, iframe: @estreno.iframe, imagen: @estreno.imagen, nota: @estreno.nota, opcion1: @estreno.opcion1, opcion2: @estreno.opcion2, titulo: @estreno.titulo }
    end

    assert_redirected_to estreno_path(assigns(:estreno))
  end

  test "should show estreno" do
    get :show, id: @estreno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estreno
    assert_response :success
  end

  test "should update estreno" do
    put :update, id: @estreno, estreno: { categoria: @estreno.categoria, descripcion: @estreno.descripcion, iframe: @estreno.iframe, imagen: @estreno.imagen, nota: @estreno.nota, opcion1: @estreno.opcion1, opcion2: @estreno.opcion2, titulo: @estreno.titulo }
    assert_redirected_to estreno_path(assigns(:estreno))
  end

  test "should destroy estreno" do
    assert_difference('Estreno.count', -1) do
      delete :destroy, id: @estreno
    end

    assert_redirected_to estrenos_path
  end
end
