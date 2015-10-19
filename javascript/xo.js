function XO(str) {
        return (str.replace(/x/gi, '').length === str.replace(/o/gi, '').length);
}
