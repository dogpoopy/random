.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOO0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOO0"
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
    .locals 2

    .line 1
    iget p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    iget p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo:I

    if-eq p2, p3, :cond_0

    return v0

    .line 3
    :cond_0
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    .line 4
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    aput p1, p3, v0

    .line 5
    aput p2, p3, v1

    return v1
.end method
