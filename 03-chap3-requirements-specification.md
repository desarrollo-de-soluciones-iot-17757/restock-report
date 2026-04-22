# Capítulo III: Requirements Specification

## 3.1. User Stories

<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td>Visitante</td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Registro de usuario</td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como visitante quiero registrarme como administrador de una tienda retail para acceder a las funcionalidades de la aplicación. 
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Registro exitoso:</strong> Dado que el visitante no tenga una cuenta cuando complete los campos de registro (Nombre del negocio, email, contraseña y rol) entonces se crea su cuenta e ingresa como administrador de retail o restaurante.</li>
          <li><strong>Escenario #2: Registro fallido:</strong> Dado que el visitante no tenga una cuenta cuando ingrese un email con un formato no válido y una contraseña débil entonces se muestra un mensaje indicando que los datos ingresados no son válidos y no se realiza el registro del visitante.</li>
          <li><strong>Escenario #3: Registro con correo existente:</strong> Dado que el visitante no tenga una cuenta cuando ingrese un correo ya asociado a una cuenta entonces se muestra un mensaje indicando que no se pudo completar el registro.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>


<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td>Usuario</td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Inicio de sesión</td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como usuario no autenticado quiero iniciar sesión para acceder de forma seguro a mi cuenta.
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Inicio de sesión exitoso:</strong> Dado que el usuario tenga una cuenta registrada cuando ingrese sus credenciales (correo y contraseña) entonces accede a su cuenta. </li>
          <li><strong>Escenario #2: Credenciales incorrectas:</strong> Dado que el usuario no haya iniciado sesión cuando ingrese un correo o contraseña incorrectos entonces se muestra un mensaje indicando que las credenciales no son válidas y no se le permite el acceso a su cuenta.</li></ul>
      </td>
    </tr>
  </tbody>
</table>


<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td>Usuario</td>
      <td>LOW</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Solicitar recuperación de acceso</td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como usuario que olvido su contraseña quiero solicitar la recuperación de acceso a mi cuenta mediante mi correo electrónico para restablecer mi cuenta mediante mi correo electrónico
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Solicitud:</strong> </li>
          <li><strong>Escenario #2: Registro fallido:</strong> </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>


<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td></td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Registro exitoso:</strong> </li>
          <li><strong>Escenario #2: Registro fallido:</strong> </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td>Desarrollador</td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Endpoint para registro de usuarios</td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como desarrollador quiero implementar un endpoint POST "api/v1/auth/sign-up" para el registro de usuarios sea de forma segura. 
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Registro exitoso:</strong> Dado que se envíe una solicitud al endpoint con el nombre del negocio, correo, contraseña y rol cuando los datos sean válidos entonces se almacenan la contraseña encriptada en la base de datos y se registra la cuenta y responde con un estado 201 CREATED.</li>
          <li><strong>Escenario #2: Correo duplicado:</strong> Dado que el correo se encuentre asociado a un usuario cuando se envía la solicitud al endpoint con dicho correo entonces devuelve un estado 409 CONFLICT y muestra el mensaje de error.</li>
          <li><strong>Escenario #3: Datos de registro incompletos:</strong> Dado que la solicitud enviada al endpoint no contiene los campos obligatorios cuando se intente procesar la solicitud entonces responde con un estado 400 BAD REQUEST y muestra un mensaje indicando los campos requeridos.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>


<table border="1" cellpadding="8" cellspacing="0" width="100%" style="margin-bottom:18px;">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
    <tr>
      <td>US-</td>
      <td>Desarrollador</td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Title</strong></td>
      <td colspan="3">Autenticación de usuarios</td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Description</strong><br/>
            Como desarrollador quiero implementar un endpoint POST "api/v1/auth/sign-in" para que se permita el acceso de usurios al sistema.
      </td>
    </tr>
    <tr>
      <td colspan="4" align="left"><strong>Acceptance Criteria</strong>
        <ul>
          <li><strong>Escenario #1: Inicio de sesión exitoso:</strong> Dado que el usuario envíe una solicitud al endpoint con el correo y contraseña cuando los datos son válidos entonces el sistema responde con un estado 200 OK y genera un token de acceso.</li>
          <li><strong>Escenario #2: Credenciales incorrectas:</strong> Dado que el usuario inicie sesión con credenciales inválidas cuando se verifica el correo y contraseña encriptada en la base de datos entonces el sistema responde con un estado 401 UNAUTHORIZED.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

## 3.2. Impact Mapping


## 3.3. Product Backlog
