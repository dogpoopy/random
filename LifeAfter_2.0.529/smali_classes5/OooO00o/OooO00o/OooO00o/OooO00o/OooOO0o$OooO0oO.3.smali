.class public final enum LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0o$OooO0oO;
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
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const v0, 0x8f001

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
