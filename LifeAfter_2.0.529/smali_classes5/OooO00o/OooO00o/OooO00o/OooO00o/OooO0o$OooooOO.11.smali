.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooooOO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooooOO"
.end annotation


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;-><init>([I)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;->OooO0O0:[I

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int v4, p2, v3

    .line 4
    iget v5, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-lt v4, v5, :cond_0

    return v2

    .line 8
    :cond_0
    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 9
    aget v5, v0, v3

    if-eq v5, v4, :cond_1

    aget v5, v0, v3

    .line 10
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    if-eq v5, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
