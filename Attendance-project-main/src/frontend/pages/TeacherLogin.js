import { useState } from "react";
import API from "../../api";
import { useNavigate } from "react-router-dom";
import "./style.css";

// IMPORTANT: match the import name used in App.js: `import TeacherLogin from "./pages/TeacherLogin";`
function TeacherLogin() {
  const [uid, setUid] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const teacherlogin = async () => {
    try {
      const res = await API.get(`/teachers?uid=${encodeURIComponent(uid)}&password=${encodeURIComponent(password)}`);

      if (Array.isArray(res.data) && res.data.length > 0) {
        const teacher = res.data[0];
        localStorage.setItem("teacher", JSON.stringify(teacher));

        const role = String(teacher.role || "").toLowerCase();
        if (role === "teacher") navigate("/teacher");
        else alert(`Logged in, but role "${teacher.role}" is not allowed for /teacher`);
      } else {
        alert("No teacher found - invalid credentials");
      }
    } catch (err) {
      console.error("Teacher login failed:", err);
      alert("Login request failed. Check console/network.");
    }
  };

  return (
    <div className="">
      <div className="">
        <h2>Teacher Login</h2>
        <input placeholder="teacher ID" onChange={(e) => setUid(e.target.value)} />
        <input type="password" placeholder="Password" onChange={(e) => setPassword(e.target.value)} />
        <button onClick={teacherlogin}>Sign In</button>
      </div>
    </div>
  );
}

export default TeacherLogin;