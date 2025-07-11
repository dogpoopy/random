.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0o0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0O0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0o0"
.end annotation


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0O0;->OooO0O0:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-gt p2, v0, :cond_4

    .line 8
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v2, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 10
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    aput p2, p3, v1

    .line 11
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    const/4 p2, 0x1

    aput p1, p3, p2

    return p2

    :cond_1
    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 18
    invoke-interface {p3, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 20
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_3
    move p2, v2

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method
