.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;
.source "Pattern.java"


# instance fields
.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;II)V
    .locals 0

    .line 1
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0OO:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 3

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0OO:I

    invoke-static {v0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    .line 3
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO(I)I

    move-result v1

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0OO:I

    invoke-static {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    .line 4
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o(I)I

    move-result p1

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o0;->OooO0OO:I

    invoke-static {v0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
