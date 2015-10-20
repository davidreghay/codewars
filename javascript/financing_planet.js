function finance(n) {
    if (n === 0) return 0;
    return 3 * n * (n + 1) / 2 + finance(n - 1);
}
