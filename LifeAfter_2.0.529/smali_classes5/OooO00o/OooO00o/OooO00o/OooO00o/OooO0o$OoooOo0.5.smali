.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOo0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OoooOo0"
.end annotation


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;-><init>([I)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)I
    .locals 0

    .line 1
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o(I)I

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;->OooO0O0:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 5
    iget v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-lt p2, v3, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 10
    aget v4, v0, v2

    if-eq v4, v3, :cond_1

    aget v4, v0, v2

    invoke-virtual {p0, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOo0;->OooO00o(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    return v1

    .line 12
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 13
    iget v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-le p2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
