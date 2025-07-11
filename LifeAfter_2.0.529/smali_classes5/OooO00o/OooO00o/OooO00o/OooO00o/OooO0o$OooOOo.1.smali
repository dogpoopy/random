.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOOO;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOOo"
.end annotation


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOOO;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;II)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 7

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOOO;->OooO0OO:I

    neg-int v0, v0

    .line 2
    invoke-static {p3, p2, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 3
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOOO;->OooO0Oo:I

    neg-int v1, v1

    .line 4
    invoke-static {p3, p2, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 5
    iget v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 6
    iget-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int v0, p2, v0

    .line 9
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    iget v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    .line 12
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    .line 14
    iget-boolean v5, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    if-eqz v5, :cond_1

    .line 15
    iput v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    :cond_1
    sub-int v1, p2, v1

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-nez v5, :cond_3

    if-lt v1, v0, :cond_3

    .line 20
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOOO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v5, p1, v1, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v5

    if-le v1, v0, :cond_2

    const/4 v6, -0x1

    .line 21
    invoke-static {p3, v1, v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v6

    :cond_2
    sub-int/2addr v1, v6

    goto :goto_1

    .line 22
    :cond_3
    iput v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 23
    iput v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    if-eqz v5, :cond_4

    .line 24
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4
.end method
