.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOoo0"
.end annotation


# instance fields
.field public OooO0O0:[I

.field public OooO0OO:[I

.field public OooO0Oo:[I


# direct methods
.method public constructor <init>([I[I[ILOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0O0:[I

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0OO:[I

    .line 4
    iput-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0Oo:[I

    .line 5
    iput-object p4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 7

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0O0:[I

    .line 2
    array-length v1, v0

    .line 3
    iget v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, 0x0

    if-gt p2, v2, :cond_3

    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_1

    add-int v5, p2, v4

    .line 9
    invoke-interface {p3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 10
    aget v6, v0, v4

    if-eq v5, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    .line 13
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0OO:[I

    and-int/lit8 v5, v5, 0x7f

    aget v5, v6, v5

    sub-int/2addr v3, v5

    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0Oo:[I

    aget v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 18
    :cond_1
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 19
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    add-int v5, p2, v1

    invoke-virtual {v4, p1, v5, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 22
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    aput p2, p3, v3

    .line 23
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    const/4 p2, 0x1

    aput p1, p3, p2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 2

    .line 24
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoo0;->OooO0O0:[I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 26
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1
.end method
