.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOooO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOooO"
.end annotation


# instance fields
.field public OooO0o0:I


# direct methods
.method public constructor <init>([I[I[ILOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;-><init>([I[I[ILOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0O0:[I

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 3
    iget p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOooO;->OooO0o0:I

    aget p2, p2, p1

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p3, p2

    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOooO;->OooO0o0:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 9

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0O0:[I

    .line 2
    array-length v1, v0

    .line 3
    iget v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    iget v3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOooO;->OooO0o0:I

    sub-int/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    if-gt p2, v2, :cond_3

    .line 4
    invoke-static {p3, p2, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v6, v1, -0x1

    :goto_1
    if-lez v4, :cond_1

    add-int v7, p2, v4

    .line 5
    invoke-static {p3, v7}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 6
    aget v8, v0, v6

    if-eq v7, v8, :cond_0

    add-int/lit8 v3, v6, 0x1

    .line 9
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0OO:[I

    and-int/lit8 v5, v7, 0x7f

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0Oo:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10
    invoke-static {p3, p2, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_2

    .line 11
    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 22
    :cond_1
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 23
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    iget v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOooO;->OooO0o0:I

    add-int/2addr v6, p2

    invoke-virtual {v4, p1, v6, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 26
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    aput p2, p3, v3

    .line 27
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    aput p1, p3, v5

    return v5

    .line 28
    :cond_2
    invoke-static {p3, p2, v5}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/CharSequence;II)I

    move-result v3

    :goto_2
    add-int/2addr p2, v3

    goto :goto_0

    :cond_3
    return v3
.end method
