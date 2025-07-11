.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0Oo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0Oo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_2

    const/16 v0, 0x180e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x200a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x202f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x205f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
