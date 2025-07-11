.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.super Ljava/lang/Object;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOoO0"
.end annotation


# instance fields
.field public OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 1

    .line 1
    iput p2, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO:I

    .line 2
    iget-object p3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0:[I

    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oo:I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    .line 3
    aput p2, p3, p1

    return p1
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 1

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    iget-boolean p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0Oo:Z

    return p1
.end method
