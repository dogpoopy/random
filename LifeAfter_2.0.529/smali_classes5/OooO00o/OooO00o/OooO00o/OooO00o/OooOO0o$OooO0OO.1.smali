.class public final enum LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o$OooO0OO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;
.source "UnicodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;-><init>(Ljava/lang/String;ILOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o$OooOO0O;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 2

    const v0, 0xfffe

    and-int v1, p1, v0

    if-eq v1, v0, :cond_1

    const v0, 0xfdd0

    if-lt p1, v0, :cond_0

    const v0, 0xfdef

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
