.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$o000oOoO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o000oOoO"
.end annotation


# instance fields
.field public final OooO0O0:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    .line 2
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$o000oOoO;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$o000oOoO;->OooO0O0:I

    invoke-static {p1, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
