.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOO0o;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0o"
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
    iget-boolean v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOOO0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    .line 5
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    aput p2, p3, v1

    .line 6
    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    const/4 p2, 0x1

    aput p1, p3, p2

    return p2

    :cond_1
    return v1
.end method
