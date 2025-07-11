.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OoooOoO"
.end annotation


# instance fields
.field public OooO0O0:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 5

    .line 1
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOOO0:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4
    :goto_0
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoO;->OooO0O0:Z

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-nez v1, :cond_3

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_1

    return v4

    :cond_1
    if-ne p2, v1, :cond_3

    .line 8
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 11
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    return v4

    :cond_3
    if-ge p2, v0, :cond_8

    .line 25
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    if-lez p2, :cond_4

    add-int/lit8 v0, p2, -0x1

    .line 28
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    return v4

    .line 30
    :cond_4
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoO;->OooO0O0:Z

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_5
    if-eq v0, v3, :cond_7

    const/16 v1, 0x85

    if-eq v0, v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    return v4

    .line 34
    :cond_7
    :goto_1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoO;->OooO0O0:Z

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 45
    :cond_8
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 1

    .line 46
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 47
    iget-boolean p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    return p1
.end method
