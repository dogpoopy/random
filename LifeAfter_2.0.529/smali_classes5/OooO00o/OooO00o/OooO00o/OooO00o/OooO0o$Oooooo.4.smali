.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooooo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Oooooo"
.end annotation


# instance fields
.field public OooO0O0:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooooo;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0O:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooooo;->OooO0O0:I

    aget v2, v0, v1

    .line 2
    aput p2, v0, v1

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;ILjava/lang/CharSequence;)Z

    move-result p2

    .line 4
    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooOO0O:[I

    iget p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$Oooooo;->OooO0O0:I

    aput v2, p1, p3

    return p2
.end method
