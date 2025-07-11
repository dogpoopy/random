.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Oooo00o"
.end annotation


# instance fields
.field public OooO0O0:[LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

.field public OooO0OO:I

.field public OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    .line 2
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0O0:[LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    .line 3
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0OO:I

    .line 7
    iput-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    const/4 p3, 0x0

    aput-object p1, v1, p3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0OO:I

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0O0:[LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    aget-object v3, v2, v1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 3
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    iget-object v2, v2, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    .line 5
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 9

    .line 6
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 7
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    .line 8
    iget-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 12
    :goto_0
    iget v7, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0OO:I

    if-ge v6, v7, :cond_1

    .line 13
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o()V

    .line 14
    iget-object v7, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0O0:[LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    aget-object v8, v7, v6

    if-eqz v8, :cond_0

    .line 15
    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 16
    :cond_0
    iget v7, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 17
    iget v7, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 18
    iget-boolean v7, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    and-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    add-int/2addr v1, v5

    .line 24
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o()V

    .line 25
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo00o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    iget-object v4, v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v4, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 27
    iget v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    add-int/2addr v4, v0

    iput v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 28
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    add-int/2addr v0, v1

    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    .line 29
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    and-int/2addr v0, v2

    iput-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0OO:Z

    .line 30
    iput-boolean v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    return v3
.end method
