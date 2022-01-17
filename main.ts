console.log("WORKS")

const fileNames: string[] = [];

for await (const file of Deno.readDir('./ovpn_configs/')) {
	console.log(file);
	if (file.isFile) {
		fileNames.push(file.name);
	}
}

console.log(fileNames);
