.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooo0oO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Oooo0oO"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 1
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    .line 2
    iget v1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    .line 3
    iget-boolean v2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOOO0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :cond_0
    if-ne p2, v1, :cond_1

    return v3

    :cond_1
    if-le p2, v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    .line 5
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    or-int/lit8 v4, v0, 0x1

    const/16 v5, 0x2029

    if-eq v4, v5, :cond_2

    const/16 v4, 0x85

    if-eq v0, v4, :cond_2

    return v3

    :cond_2
    if-ne v0, v1, :cond_3

    .line 12
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    return v3

    .line 15
    :cond_3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
