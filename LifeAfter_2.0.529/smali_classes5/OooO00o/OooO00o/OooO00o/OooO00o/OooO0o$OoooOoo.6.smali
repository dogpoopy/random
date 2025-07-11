.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OoooOoo"
.end annotation


# instance fields
.field public OooO0O0:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;->OooO0O0:[I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z
    .locals 3

    .line 1
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooOoo;->OooO0O0:[I

    array-length v2, v1

    add-int/2addr v0, v2

    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO00o:I

    .line 2
    iget v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;->OooO0O0:I

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooO0oo;)Z

    move-result p1

    return p1
.end method
