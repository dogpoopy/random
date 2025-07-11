.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OoooOOo"
.end annotation


# instance fields
.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o0:I


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    .line 3
    iput p4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0OO:I

    .line 4
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0Oo:I

    .line 5
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z
    .locals 5

    .line 28
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    if-lt p3, v0, :cond_0

    .line 31
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {p3, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 34
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    sub-int v1, v0, p2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p3, 0x1

    .line 43
    :goto_0
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    const/4 v3, 0x1

    if-ge p2, v2, :cond_4

    .line 44
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, v0, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int v2, v0, v1

    .line 46
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-eq v2, v4, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 47
    invoke-virtual {p0, p1, v4, v2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-lt p2, p3, :cond_6

    .line 56
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, v0, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_5
    sub-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_7
    :goto_2
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {p3, p1, p2, p4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0Oo:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 8
    :cond_1
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0OO:I

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2, v1, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;IILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 10
    :goto_1
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 13
    :cond_3
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    if-lt v1, v2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-ne p2, v2, :cond_6

    :goto_2
    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_1

    .line 20
    :cond_7
    :goto_3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    if-ge v1, v0, :cond_a

    .line 21
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    if-ne p2, v0, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    move p2, v0

    goto :goto_3

    .line 27
    :cond_a
    :goto_4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 6

    .line 64
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 65
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    .line 66
    iget-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 67
    iget-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    .line 68
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o()V

    .line 70
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v4, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 72
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    iget v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0Oo:I

    mul-int v4, v4, v5

    add-int/2addr v4, v0

    if-ge v4, v0, :cond_0

    const v4, 0xfffffff

    .line 76
    :cond_0
    iput v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 78
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 79
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    mul-int v0, v0, v4

    add-int/2addr v0, v1

    .line 80
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    if-ge v0, v1, :cond_2

    .line 82
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    goto :goto_0

    .line 85
    :cond_1
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 88
    :cond_2
    :goto_0
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    if-eqz v0, :cond_3

    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0Oo:I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOOo;->OooO0o0:I

    if-ne v0, v1, :cond_3

    .line 89
    iput-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    goto :goto_1

    .line 91
    :cond_3
    iput-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    .line 92
    :goto_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1
.end method
