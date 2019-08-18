// Copyright (c) 2018-2019 The Umbru Core developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef UMBRU_QUORUMS_INIT_H
#define UMBRU_QUORUMS_INIT_H

class CDBWrapper;
class CEvoDB;
class CScheduler;

namespace llmq
{

// If true, we will connect to all new quorums and watch their communication
static const bool DEFAULT_WATCH_QUORUMS = false;

// Init/destroy LLMQ globals
void InitLLMQSystem(CEvoDB& evoDb, CScheduler* scheduler, bool unitTests, bool fWipe = false);
void DestroyLLMQSystem();

// Manage scheduled tasks, threads, listeners etc.
void StartLLMQSystem();
void StopLLMQSystem();
void InterruptLLMQSystem();
}

#endif //UMBRU_QUORUMS_INIT_H
