.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;
.source "Pattern.java"


# instance fields
.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;II)V
    .locals 0

    .line 1
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0OO:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 3

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0O0:I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0OO:I

    invoke-static {v0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 4
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0O0:I

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0OO:I

    invoke-static {v0, p1, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0O0:I

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO0OO:I

    invoke-static {v0, p1, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(III)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
