.class public final enum LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o$OooO00o;
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
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;->OooOOO0:LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o;->OooO00o(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_6

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-le p1, v0, :cond_6

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-le p1, v0, :cond_6

    :cond_2
    const v0, 0xff10

    if-lt p1, v0, :cond_3

    const v0, 0xff19

    if-le p1, v0, :cond_6

    :cond_3
    const v0, 0xff21

    if-lt p1, v0, :cond_4

    const v0, 0xff26

    if-le p1, v0, :cond_6

    :cond_4
    const v0, 0xff41

    if-lt p1, v0, :cond_5

    const v0, 0xff46

    if-gt p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
