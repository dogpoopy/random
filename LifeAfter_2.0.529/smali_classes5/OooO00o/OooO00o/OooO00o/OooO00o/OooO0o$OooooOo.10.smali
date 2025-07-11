.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooooOo"
.end annotation


# instance fields
.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:I

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;IIIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    .line 3
    iput p4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0OO:I

    .line 4
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    .line 5
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    .line 6
    iput p5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o:I

    .line 7
    iput p6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    .line 8
    iput-boolean p7, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z
    .locals 8

    .line 65
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    .line 68
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 69
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aget v2, v0, v1

    add-int/2addr v1, v3

    .line 70
    aget v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    if-lt p3, v4, :cond_1

    goto/16 :goto_2

    .line 75
    :cond_1
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v4, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 77
    :cond_2
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    sub-int/2addr v4, p2

    if-gtz v4, :cond_4

    .line 79
    iget-boolean p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz p3, :cond_3

    .line 80
    iget p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput p2, v0, p3

    add-int/2addr p3, v3

    add-int v5, p2, v4

    .line 81
    aput v5, v0, p3

    :cond_3
    add-int/2addr p2, v4

    goto :goto_2

    :cond_4
    move v5, p3

    .line 87
    :cond_5
    iget-boolean v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz v6, :cond_6

    .line 88
    iget v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput p2, v0, v6

    add-int/2addr v6, v3

    add-int v7, p2, v4

    .line 89
    aput v7, v0, v6

    :cond_6
    add-int/2addr p2, v4

    add-int/2addr v5, v3

    .line 92
    iget v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    if-lt v5, v6, :cond_7

    goto :goto_1

    .line 94
    :cond_7
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v6, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    add-int v6, p2, v4

    .line 96
    iget v7, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-eq v6, v7, :cond_5

    .line 97
    invoke-virtual {p0, p1, p2, v5, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v3

    :cond_9
    :goto_1
    if-le v5, p3, :cond_d

    .line 103
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v6, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 104
    iget-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz p1, :cond_a

    .line 105
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p3

    sub-int/2addr p2, v4

    .line 106
    aput p2, v0, p1

    :cond_a
    return v3

    :cond_b
    sub-int/2addr p2, v4

    .line 112
    iget-boolean v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz v6, :cond_c

    .line 113
    iget v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    add-int/lit8 v7, v6, 0x1

    aput p2, v0, v7

    sub-int v7, p2, v4

    .line 114
    aput v7, v0, v6

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 121
    :cond_d
    :goto_2
    iget-boolean p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz p3, :cond_e

    .line 122
    iget p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput v2, v0, p3

    add-int/2addr p3, v3

    .line 123
    aput v1, v0, p3

    .line 125
    :cond_e
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {p3, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 11

    .line 1
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    .line 2
    iget-object v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0O:[I

    .line 3
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o:I

    aget v3, v1, v2

    .line 7
    iget-boolean v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 8
    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aget v7, v0, v4

    add-int/2addr v4, v6

    .line 9
    aget v4, v0, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    .line 13
    aput v8, v1, v2

    const/4 v2, 0x0

    .line 16
    :goto_1
    iget v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    if-ge v2, v8, :cond_3

    .line 17
    iget-object v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v8, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    iget-boolean v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz v8, :cond_1

    .line 19
    iget v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput p2, v0, v8

    add-int/2addr v8, v6

    .line 20
    iget p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    aput p2, v0, v8

    .line 22
    :cond_1
    iget p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_f

    .line 29
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0OO:I

    if-nez v2, :cond_4

    .line 30
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    invoke-virtual {p0, p1, p2, v2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z

    move-result v5

    goto/16 :goto_6

    :cond_4
    if-ne v2, v6, :cond_a

    .line 32
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    .line 33
    :goto_3
    iget-object v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v8, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    goto :goto_6

    .line 35
    :cond_5
    iget v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    if-lt v2, v8, :cond_6

    goto :goto_6

    .line 37
    :cond_6
    iget-object v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v8, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_6

    .line 39
    :cond_7
    iget v8, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-ne p2, v8, :cond_8

    goto :goto_6

    .line 41
    :cond_8
    iget-boolean v9, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz v9, :cond_9

    .line 42
    iget-object v9, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    iget v10, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput p2, v9, v10

    add-int/2addr v10, v6

    .line 43
    aput v8, v9, v10

    .line 45
    :cond_9
    iget p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 46
    :cond_a
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    .line 47
    :goto_4
    iget v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    if-ge v2, v5, :cond_e

    .line 48
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v5, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_5

    .line 51
    :cond_b
    iget-boolean v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz v5, :cond_c

    .line 52
    iget-object v5, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    iget v8, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput p2, v5, v8

    add-int/2addr v8, v6

    .line 53
    iget v9, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    aput v9, v5, v8

    .line 55
    :cond_c
    iget v5, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-ne p2, v5, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    move p2, v5

    goto :goto_4

    .line 60
    :cond_e
    :goto_5
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v5

    goto :goto_6

    :cond_f
    move v5, v2

    :goto_6
    if-nez v5, :cond_10

    .line 61
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o:I

    aput v3, v1, p1

    .line 62
    iget-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oo:Z

    if-eqz p1, :cond_10

    .line 63
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0oO:I

    aput v7, v0, p1

    add-int/2addr p1, v6

    .line 64
    aput v4, v0, p1

    :cond_10
    return v5
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 6

    .line 126
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 127
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    .line 128
    iget-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 129
    iget-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    .line 130
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o()V

    .line 132
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v4, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 134
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    iget v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    mul-int v4, v4, v5

    add-int/2addr v4, v0

    if-ge v4, v0, :cond_0

    const v4, 0xfffffff

    .line 138
    :cond_0
    iput v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 140
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 141
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    mul-int v0, v0, v4

    add-int/2addr v0, v1

    .line 142
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    if-ge v0, v1, :cond_2

    .line 144
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    goto :goto_0

    .line 147
    :cond_1
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 150
    :cond_2
    :goto_0
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    if-eqz v0, :cond_3

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0Oo:I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOo;->OooO0o0:I

    if-ne v0, v1, :cond_3

    .line 151
    iput-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    goto :goto_1

    .line 153
    :cond_3
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    .line 155
    :goto_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1
.end method
