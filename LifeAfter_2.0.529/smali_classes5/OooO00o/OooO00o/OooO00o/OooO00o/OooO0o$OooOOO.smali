.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOOO"
.end annotation


# instance fields
.field public OooO0O0:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 4

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

    :goto_0
    if-ge p2, v0, :cond_3

    .line 4
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 8
    iget-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOOO;->OooO0O0:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_1

    return v3

    :cond_1
    if-eqz v1, :cond_3

    .line 13
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    return v3

    .line 24
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 1

    .line 25
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    .line 26
    iget-boolean p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    return p1
.end method
