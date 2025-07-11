.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOoOO"
.end annotation


# instance fields
.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

.field public OooO0OO:I

.field public OooO0Oo:I


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    .line 3
    iput p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0OO:I

    .line 4
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 1
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    .line 2
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 4
    iget-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0OO:I

    sub-int v4, p2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    .line 9
    iget-boolean v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    if-eqz v4, :cond_1

    .line 10
    iput v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 11
    :cond_1
    iget v4, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0Oo:I

    sub-int v4, p2, v4

    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    if-lt v4, v2, :cond_2

    .line 12
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoOO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v5, p1, v4, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 15
    :cond_2
    iput v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 16
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o0:I

    if-nez v5, :cond_3

    .line 17
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method
