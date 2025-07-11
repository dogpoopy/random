.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo0O;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOo0O"
.end annotation


# instance fields
.field public OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo0O;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    .line 4
    iget-boolean v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0o:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6
    iput v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    .line 8
    :cond_0
    :try_start_0
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-ge p2, v1, :cond_1

    .line 9
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo0O;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v1, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo0O;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v1, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 18
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-eqz v1, :cond_2

    .line 20
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    :catchall_0
    move-exception p2

    .line 21
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    .line 22
    throw p2
.end method
