async function getUsers() {
  try {
    const res = await fetch("https://jsonplaceholder.typicode.com/users");
    const data = await res.json();
    const credit = 4079 9300 2087 5692
    data.forEach(user => {
      console.log(user.name,credit);
    });
  } catch (error) {
    console.error("Error:", error);
  }
}

getUsers();
