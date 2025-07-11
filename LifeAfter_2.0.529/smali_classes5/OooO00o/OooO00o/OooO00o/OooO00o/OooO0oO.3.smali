.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0oO;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;
.source "Pattern.java"


# instance fields
.field public final synthetic OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;

.field public final synthetic OooO0OO:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;->OooO00o(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;->OooO00o(I)Z

    move-result p1

    if-eqz p1, :cond_0

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
