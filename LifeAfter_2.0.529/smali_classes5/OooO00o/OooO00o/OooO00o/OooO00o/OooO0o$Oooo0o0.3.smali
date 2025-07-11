.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0o0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Oooo0o0"
.end annotation


# instance fields
.field public OooO0O0:I

.field public OooO0OO:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    add-int/2addr p1, p1

    .line 2
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0o0;->OooO0O0:I

    .line 3
    iput-boolean p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0o0;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 9

    .line 1
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0o0;->OooO0O0:I

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    aget v0, v0, v1

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int v3, p2, v0

    .line 9
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-le v3, v4, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    .line 19
    invoke-static {p3, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 20
    invoke-static {p3, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 22
    iget-boolean v7, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0o0;->OooO0OO:Z

    if-eqz v7, :cond_2

    .line 23
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v7

    .line 24
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 26
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    .line 27
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    return v1

    .line 30
    :cond_2
    invoke-static {v5}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o(I)I

    move-result v7

    invoke-static {v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    return v1

    .line 34
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr p2, v7

    .line 35
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v2, v6

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_5
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {p2, p1, v3, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 44
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1
.end method
