.class public abstract LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O$OooOoO0;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;
.source "Pattern.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooOoO0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method

.method public synthetic constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O$OooOoO0;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O$OooOoO0;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O$OooOoO0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 4
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0O$OooOoO0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
