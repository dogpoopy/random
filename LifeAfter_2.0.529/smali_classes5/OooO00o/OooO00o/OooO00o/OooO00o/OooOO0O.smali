.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxErrException.java"


# static fields
.field public static final OooO0Oo:Ljava/lang/String;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO00o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0O0:Ljava/lang/String;

    .line 4
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0OO:I

    if-ltz v1, :cond_0

    const-string v1, " near index "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0OO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    :cond_0
    sget-object v1, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0OO:I

    if-ltz v2, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooOO0O;->OooO0OO:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5e

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
