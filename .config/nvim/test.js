class Translate {
	translate(key) {
		return key + " TRADUZIDO"
	}
}

class StudentImport {
	config = {
		name: { key: "NAME", type: "text" },
		doc: { key: "NIF", type: "number" },
		telefone: { key: "TELEFONE", validitorF: (input) => input.length == 9, },
	}

	/**
	 * @param {Translate} t
	 */
	generateFile(t) {
		Object.values(this.config).map(m => {
			return {
				colName: t.translate(m.key),
				colType: m.type,
			}
		})
	}

	/**
	 * @param {string} val
	 * @returns {object}
	 */
	findKey(val) {
		const cfg = Object.values(this.config).find(c => t.translate(c.key) === val);
		if (cfg) {
			return cfg
		}
	}

	import(fileContents) {
		for (const row in fileContents.Rows()) {
			for (const col in row.Columns()) {
			}
		}
	}
}

const t = new Translate();

const cols = Object.keys(colsmap).map(k => t.translate(k))

const m = {
	name: "NAME",
	doc: "NIF",
}

function f(col) {
	for (const [key, val] of Object.entries(m)) {
		if (t.translate(val) === col) {
			return key
		}
	}
}

const k = f(col)
if 
